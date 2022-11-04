--SELECT COUNT(*) FROM `winter-surge-337917.PortfolioProjects.coviddeaths` LIMIT 1000;

select * from `winter-surge-337917.PortfolioProjects.coviddeaths`
where continent is not null
order by 3,4;

-- Select data to be used 
Select location, date, population, total_cases, new_cases, total_deaths 
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
order by 1,2;

--Cases Vs Deaths
select DISTINCT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
order by 1,2;

--Cases Vs Deaths by location
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
where location like '%States%'
order by 1,2;

-- Total cases vs population % of people who got COVID
select location, date, population,total_cases, (total_cases/population)*100 as PercentPopulationInfectedPercentage
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
where location like '%States%'
order by 1,2;




-- Looking at countries with highest Infection rate compared to population
Select location, population, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/population))*100 as PercentPopulationInfected
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
group by location, population
order by PercentPopulationInfected desc;

--Showing countrieis with highest deaths per population
Select location, MAX(total_deaths) as TotalDeathsCount
from `winter-surge-337917.PortfolioProjects.coviddeaths`
where continent is not null
group by location
order by TotalDeathsCount desc;

-- Show deaths by continents
Select continent, MAX(total_deaths) as TotalDeathsCount
from `winter-surge-337917.PortfolioProjects.coviddeaths`
where continent is not null
group by continent
order by TotalDeathsCount desc;

-- Show null deaths by location
Select location, MAX(total_deaths) as TotalDeathsCount
from `winter-surge-337917.PortfolioProjects.coviddeaths`
where continent is not null
group by location
order by TotalDeathsCount desc;


--Showing continents with the highest death count per population
Select continent, MAX(cast(total_deaths as int)) as TotalDeathsCount
from `winter-surge-337917.PortfolioProjects.coviddeaths`
where continent is not null
group by continent
order by TotalDeathsCount desc;

--GLOBAL NUMBERS
select date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)* 100 as DeathPercentage
from `winter-surge-337917.PortfolioProjects.coviddeaths` 
where continent is not null
group by date
order by 1,2;


--vaccination
select * from
`winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
on dea.location = vac.location
and vac.date = vac.date;

--looking at total population vs vaccinations
select dea.continent, dea.location,dea.date, dea.population, vac.new_vaccinations from
`winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
on dea.location = vac.location
and vac.date = vac.date;


--looking at total population vs vaccinations
select dea.continent, dea.location,dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER( Partition by dea.location order by dea.location, dea.date ) as
RollingPeopleVaccinated, 
--(RollingPeopleVaccinated/population)*100
 from `winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
on dea.location = vac.location
and vac.date = vac.date
where dea.continent is not null
order by 2,3;

--USE CTE
With PopvsVac (continent, location, date,population, vac.new_vaccinations, RollingPeopleVaccinated)
AS
(select dea.continent, dea.location,dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER( Partition by dea.location order by dea.location, dea.date ) as
RollingPeopleVaccinated, 
--(RollingPeopleVaccinated/population)*100
 from `winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
on dea.location = vac.location
and vac.date = vac.date
where dea.continent is not null
--order by 2,3;
)
SELECT *, (RollingPeopleVaccinated/population)* 100, FROM PopvsVac;


--TEMP TABLE
DROP table if exists #PercentPopulationVaccinated
Create table #PercentPopulationVaccinated
(
  continent nvarchar(255),
  location nvarchar(255),
  date datetime,
  population, numeric,
  new_vaccinations numeric,
  RollingPeopleVaccinated numeric
)

Insert into
select dea.continent, dea.location,dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER( Partition by dea.location order by dea.location, dea.date ) as
RollingPeopleVaccinated, 
--(RollingPeopleVaccinated/population)*100
 from `winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
on dea.location = vac.location
and vac.date = vac.date
where dea.continent is not null
--order by 2,3;
Select *, (RollingPeopleVaccinated/population)*100
from #PercentPopulationVaccinated

--Creating view to store data for visualization
Create View PercentPopulationVaccinated as
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations)OVER(Partition by dea.location
Order by dea.location,dea.date) as RollingPeopleVaccinated,
from `winter-surge-337917.PortfolioProjects.coviddeaths` dea
Join `winter-surge-337917.PortfolioProjects.covidvaccines` vac
On dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
--order by 2,3
