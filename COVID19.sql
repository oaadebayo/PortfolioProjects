{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red204\green0\blue78;\red255\green255\blue254;\red0\green0\blue0;
\red39\green78\blue204;\red42\green55\blue62;\red21\green129\blue62;\red238\green57\blue24;\red107\green0\blue1;
}
{\*\expandedcolortbl;;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c20000\c40392\c83922;\cssrgb\c21569\c27843\c30980;\cssrgb\c5098\c56471\c30980;\cssrgb\c95686\c31765\c11765;\cssrgb\c50196\c0\c0;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 --SELECT COUNT(*) FROM `winter-surge-337917.PortfolioProjects.coviddeaths` LIMIT 1000;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  \cf6 \strokec6 *\cf0 \strokec4  \cf5 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 3\cf0 \strokec4 ,\cf8 \strokec8 4\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Select data to be used \cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  location, \cf5 \strokec5 date\cf0 \strokec4 , population, total_cases, new_cases, total_deaths \cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 1\cf0 \strokec4 ,\cf8 \strokec8 2\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Cases Vs Deaths\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  \cf5 \strokec5 DISTINCT\cf0 \strokec4  location, \cf5 \strokec5 date\cf0 \strokec4 , total_cases, total_deaths, \cf6 \strokec6 (\cf0 \strokec4 total_deaths\cf6 \strokec6 /\cf0 \strokec4 total_cases\cf6 \strokec6 )*\cf8 \strokec8 100\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  DeathPercentage\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 1\cf0 \strokec4 ,\cf8 \strokec8 2\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Cases Vs Deaths by location\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  location, \cf5 \strokec5 date\cf0 \strokec4 , total_cases, total_deaths, \cf6 \strokec6 (\cf0 \strokec4 total_deaths\cf6 \strokec6 /\cf0 \strokec4 total_cases\cf6 \strokec6 )*\cf8 \strokec8 100\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  DeathPercentage\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  location \cf5 \strokec5 like\cf0 \strokec4  \cf7 \strokec7 '%States%'\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 1\cf0 \strokec4 ,\cf8 \strokec8 2\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Total cases vs population % of people who got COVID\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  location, \cf5 \strokec5 date\cf0 \strokec4 , population,total_cases, \cf6 \strokec6 (\cf0 \strokec4 total_cases\cf6 \strokec6 /\cf0 \strokec4 population\cf6 \strokec6 )*\cf8 \strokec8 100\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  PercentPopulationInfectedPercentage\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  location \cf5 \strokec5 like\cf0 \strokec4  \cf7 \strokec7 '%States%'\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 1\cf0 \strokec4 ,\cf8 \strokec8 2\cf0 \strokec4 ;\cb1 \
\
\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Looking at countries with highest Infection rate compared to population\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  location, population, \cf5 \strokec5 MAX\cf6 \strokec6 (\cf0 \strokec4 total_cases\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  HighestInfectionCount, \cf5 \strokec5 MAX\cf6 \strokec6 ((\cf0 \strokec4 total_cases\cf6 \strokec6 /\cf0 \strokec4 population\cf6 \strokec6 ))*\cf8 \strokec8 100\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  PercentPopulationInfected\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  location, population\cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  PercentPopulationInfected \cf5 \strokec5 desc\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Showing countrieis with highest deaths per population\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  location, \cf5 \strokec5 MAX\cf6 \strokec6 (\cf0 \strokec4 total_deaths\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  TotalDeathsCount\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  location\cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  TotalDeathsCount \cf5 \strokec5 desc\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Show deaths by continents\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  continent, \cf5 \strokec5 MAX\cf6 \strokec6 (\cf0 \strokec4 total_deaths\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  TotalDeathsCount\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  continent\cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  TotalDeathsCount \cf5 \strokec5 desc\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Show null deaths by location\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  location, \cf5 \strokec5 MAX\cf6 \strokec6 (\cf0 \strokec4 total_deaths\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  TotalDeathsCount\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  location\cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  TotalDeathsCount \cf5 \strokec5 desc\cf0 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Showing continents with the highest death count per population\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  continent, \cf5 \strokec5 MAX\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf0 \strokec4 total_deaths \cf5 \strokec5 as\cf0 \strokec4  int\cf6 \strokec6 ))\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  TotalDeathsCount\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  continent\cb1 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  TotalDeathsCount \cf5 \strokec5 desc\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --GLOBAL NUMBERS\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  \cf5 \strokec5 date\cf0 \strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 new_cases\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  total_cases, \cf5 \strokec5 SUM\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf0 \strokec4 new_deaths \cf5 \strokec5 as\cf0 \strokec4  int\cf6 \strokec6 ))\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  total_deaths, \cf5 \strokec5 SUM\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf0 \strokec4 new_deaths \cf5 \strokec5 as\cf0 \strokec4  int\cf6 \strokec6 ))/\cf5 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 new_cases\cf6 \strokec6 )*\cf0 \strokec4  \cf8 \strokec8 100\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  DeathPercentage\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 group\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf5 \strokec5 date\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 1\cf0 \strokec4 ,\cf8 \strokec8 2\cf0 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --vaccination\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  \cf6 \strokec6 *\cf0 \strokec4  \cf5 \strokec5 from\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 on\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  vac.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --looking at total population vs vaccinations\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  dea.continent, dea.location,dea.\cf5 \strokec5 date\cf0 \strokec4 , dea.population, vac.new_vaccinations \cf5 \strokec5 from\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 on\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  vac.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --looking at total population vs vaccinations\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 select\cf0 \strokec4  dea.continent, dea.location,dea.\cf5 \strokec5 date\cf0 \strokec4 , dea.population, vac.new_vaccinations,\cb1 \
\cf5 \cb3 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 vac.new_vaccinations\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 OVER\cf6 \strokec6 (\cf0 \strokec4  \cf5 \strokec5 Partition\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location \cf5 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location, dea.\cf5 \strokec5 date\cf0 \strokec4  \cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3 RollingPeopleVaccinated, \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --(RollingPeopleVaccinated/population)*100\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3  \cf5 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 on\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  vac.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  dea.continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  \cf8 \strokec8 2\cf0 \strokec4 ,\cf8 \strokec8 3\cf0 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --USE CTE\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 With\cf0 \strokec4  PopvsVac \cf6 \strokec6 (\cf0 \strokec4 continent, location, \cf5 \strokec5 date\cf0 \strokec4 ,population, vac.new_vaccinations, RollingPeopleVaccinated\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 AS\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf5 \strokec5 select\cf0 \strokec4  dea.continent, dea.location,dea.\cf5 \strokec5 date\cf0 \strokec4 , dea.population, vac.new_vaccinations,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 vac.new_vaccinations\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 OVER\cf6 \strokec6 (\cf0 \strokec4  \cf5 \strokec5 Partition\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location \cf5 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location, dea.\cf5 \strokec5 date\cf0 \strokec4  \cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3 RollingPeopleVaccinated, \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --(RollingPeopleVaccinated/population)*100\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3  \cf5 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 on\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  vac.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  dea.continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --order by 2,3;\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf0 \strokec4  \cf6 \strokec6 *\cf0 \strokec4 , \cf6 \strokec6 (\cf0 \strokec4 RollingPeopleVaccinated\cf6 \strokec6 /\cf0 \strokec4 population\cf6 \strokec6 )*\cf0 \strokec4  \cf8 \strokec8 100\cf0 \strokec4 , \cf5 \strokec5 FROM\cf0 \strokec4  PopvsVac;\cb1 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --TEMP TABLE\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 DROP\cf0 \strokec4  \cf5 \strokec5 table\cf0 \strokec4  \cf5 \strokec5 if\cf0 \strokec4  \cf5 \strokec5 exists\cf0 \strokec4  \cf2 \strokec2 #PercentPopulationVaccinated\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 Create\cf0 \strokec4  \cf5 \strokec5 table\cf0 \strokec4  \cf2 \strokec2 #PercentPopulationVaccinated\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3   continent nvarchar\cf6 \strokec6 (\cf8 \strokec8 255\cf6 \strokec6 )\cf0 \strokec4 ,\cb1 \
\cb3   location nvarchar\cf6 \strokec6 (\cf8 \strokec8 255\cf6 \strokec6 )\cf0 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 date\cf0 \strokec4  \cf5 \strokec5 datetime\cf0 \strokec4 ,\cb1 \
\cb3   population, numeric,\cb1 \
\cb3   new_vaccinations numeric,\cb1 \
\cb3   RollingPeopleVaccinated numeric\cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Insert\cf0 \strokec4  \cf5 \strokec5 into\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 select\cf0 \strokec4  dea.continent, dea.location,dea.\cf5 \strokec5 date\cf0 \strokec4 , dea.population, vac.new_vaccinations,\cb1 \
\cf5 \cb3 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 vac.new_vaccinations\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 OVER\cf6 \strokec6 (\cf0 \strokec4  \cf5 \strokec5 Partition\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location \cf5 \strokec5 order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location, dea.\cf5 \strokec5 date\cf0 \strokec4  \cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3 RollingPeopleVaccinated, \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --(RollingPeopleVaccinated/population)*100\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3  \cf5 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 on\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  vac.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  dea.continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --order by 2,3;\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  \cf6 \strokec6 *\cf0 \strokec4 , \cf6 \strokec6 (\cf0 \strokec4 RollingPeopleVaccinated\cf6 \strokec6 /\cf0 \strokec4 population\cf6 \strokec6 )*\cf8 \strokec8 100\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf2 \strokec2 #PercentPopulationVaccinated\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Creating view to store data for visualization\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Create\cf0 \strokec4  \cf5 \strokec5 View\cf0 \strokec4  PercentPopulationVaccinated \cf5 \strokec5 as\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 Select\cf0 \strokec4  dea.continent, dea.location, dea.\cf5 \strokec5 date\cf0 \strokec4 , dea.population, vac.new_vaccinations,\cb1 \
\cf5 \cb3 \strokec5 SUM\cf6 \strokec6 (\cf0 \strokec4 vac.new_vaccinations\cf6 \strokec6 )\cf5 \strokec5 OVER\cf6 \strokec6 (\cf5 \strokec5 Partition\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location\cb1 \
\cf5 \cb3 \strokec5 Order\cf0 \strokec4  \cf5 \strokec5 by\cf0 \strokec4  dea.location,dea.\cf5 \strokec5 date\cf6 \strokec6 )\cf0 \strokec4  \cf5 \strokec5 as\cf0 \strokec4  RollingPeopleVaccinated,\cb1 \
\cf5 \cb3 \strokec5 from\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.coviddeaths`\cf0 \strokec4  dea\cb1 \
\cf5 \cb3 \strokec5 Join\cf0 \strokec4  \cf7 \strokec7 `winter-surge-337917.PortfolioProjects.covidvaccines`\cf0 \strokec4  vac\cb1 \
\cf5 \cb3 \strokec5 On\cf0 \strokec4  dea.\cf9 \strokec9 location\cf0 \strokec4  = vac.location\cb1 \
\cf5 \cb3 \strokec5 and\cf0 \strokec4  dea.\cf9 \strokec9 date\cf0 \strokec4  = vac.\cf5 \strokec5 date\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf0 \strokec4  dea.continent \cf5 \strokec5 is\cf0 \strokec4  \cf5 \strokec5 not\cf0 \strokec4  \cf5 \strokec5 null\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --order by 2,3\cf0 \cb1 \strokec4 \
}