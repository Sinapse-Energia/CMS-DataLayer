# CMS-SmartDataLayer
Development of a new way of CMS data management, named CMS-SDL. 

# Introduction

The CMS is a smart lighting legacy application. It is developed in RoR 4.2 and have a complex data model based in TALQ specification. 
Its code contains several problems / bugs and the models are not optimal at all.

The goal of this project is to create a new way of database exploitation, named CMS-SDL. It can be a new set of models or a REST API that ease the use of the available data.

At first, the new data layer to be developed will be focused only in the reading of the data and their modification in order to fill possible gaps. Then, after finish our first goal would be possible to continue with writing of data but is not in the scope at this moment. 

In short, we want to develop a layer to provide expected data based in real collected data and a set of rules. It is a kind of big data application that will feed the legacy CMS application

# Getting started

In order to start with the CMS-SDL development it is necessary to understand the CMS Data Model or at least some of their parts, like the historical data of the different kind of devices (End point devices, gateways and cmcs). In order to avoid bad practices we think is better to not provide rails models unless it is totally needed. We will provide:

- Migrations
- Seeds
- Example of database with historical data

# Rails Models vs REST API application

At first, maybe the most easy way is to create a new set of models but the long term goal is to have a kind of application providing a REST API that will ease the use of the saved data from any third party application
