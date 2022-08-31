---
title: "Me"
date: 2022-05-24T11:30:03+00:00
tags: ["me"]
author: "berlingoqc"
showToc: true
TocOpen: true
---

## About me

Hello, I'm William Quintal, I have had a long-running passion for computers since a young age.

At a young age, I was observing my godfather working on network switches with C on Ubuntu I was amazed.
And I thought what one day I'll be a programmer to one day.


### General Information

* William Quintal
* Living in Montréal
* Working in programming since 2019
* Start programming in 2015
* Cégep Lévis-Lauzon , Industrial Programming
* Share my house with a young dog and an old cat.

## Job experiences and role

### Ticketmaster

#### Type and Duration

* Current job
* Oct 2021 - Present
* Québec, Québec

#### Experiences

In this job, I started there by working on a new micro-service to bridge a new global public API for external partners to the international system but after that, I move more into a DevOps role
working on their modernization project to move old applications from WAR to Spring Boot inside container image.
In the modernization effort, I mainly work on the deployment of the applications to eks with helm charts built by other teams. Adding features and integrating them.

Things I learned while working there:

* Kubernetes (eks)
* Helm charts (creating and using)
* Terraform
* AWS
  * SecretManager (used with in-house tooling to resolve secrets in application)j
  * IAM 
  * EKS
  * CloudWatch (exporting to Prometheus)
* Prometheus
* Spring Boot with Kotlin

### Powerside

#### Type and Duration

* Mar 2021 - Oct 2021 · 8 months
* Montréal, Québec

#### Experiences

First time working in a small startup in a team of 3 dev, 1 QA and 1 Team Lead.
In this job, I had to work with the in-house client to work on their platform to monitor
the data of their fleet of IoT devices that were monitoring some electric grid.

I mainly work on the front-end angular application which was too heavy for its needs. The app was originally built by an external company and later brought back in-house when the company first start hiring software programmers.
In this process, the app was badly constructed with no regard for
sustainability. So the main focus of my job was to bring in new functionality but in the end, we did a lot of refactoring to reduce the complexity and readability of the codebase.
In the end, I also work in the backend stack, which allowed me for the first time to work with a big cloud provider like AWS


The features I work on while there:
* Integrate a WYSIWYG editor with multimedia assets to preview and edit a dynamic report.
* Working with SQS/MQTT/Lambda to add the capability to send commands to a specific device in the fleet for maintenance and configuration.
* Fixing bugs
* Integration CI/CD to move tests that were running on a pre-commit hook to CI/CD with GitHub Actions

Things I learned while working there:

* AWS
  * CloudFormation
  * Lambda
  * SQS
  * IAM
  * EC2
* Angular
* Github Action
  

### Alborea

#### Type and Duration

*  Nov 2019 - Oct 2021 · 2 years
*  Montréal, Québec

#### Experiences

My first job working alone.

For most of my time there I was the only one working on their software.
In this job, I had to work a lot with external and internal clients to build them custom-made full-stack applications and I also maintain old full-stack applications made by the previous programmer

the application where:

* in-house portal for timesheet, project management and employee database (nodejs/looopback{3,4}/angular/firebase)
* in-house e-learning platform with the SCROM standard (nodejs/loopback4/angular)
* many small demo applications to try to bring clients in.

This job allowed me to:

* Build more experience with angular and start creating libraries to recycle generic components.
* Same with nodejs working in loopback3 and latter on porting to loopback4
* Learn docker, dockering all the applications for development/testing/deployment.
* Learn CI, when I got there all deployments were manual with `scp`, I move to CD/CI using GitHub Action.
* Migrating to loopback4 (js to ts also) many components were missing and I had to reimplement some like :
  * Auto-generated crud controller that wraps around repository (with mix-in and anonymous class)
  * Datasource for email
  * Component for assets
  * Component for dynamic authorization rules with casbin.
* Work in relation with the client the get their need and build frame the time necessery to accomplish the project.
* Play more with hosting, migrating from plain VM with nodejs running on them with PM2 to docker / docker-composed


### Desjardins

#### Type and Duration

* Internship
* Apr 2019 - Oct 2019 · 7 months

#### Experiences

First programming job of my life.

I was working on multiple small Angular applications to add new components.
Also, work a bit with Spring boot microservice with controller generated from
the swagger definition.


This internship allowed me to discover many technologies and concepts like :

* Angular
* Kotlin / Spring Boot
* Swagger and OpenAPI
* Postman
* Building api

## Other projects

### Growbe

* [github organization](https://github.com/growbe2)
* [documentation](https://doc.growbe.ca)

The goal of the growbe project is to create an end-to-end solution to monitor and control automatically different types of environments like a greenhouse primarily

We produce an array of IoT modules that connect to a central device that monitors some modules to take action on other modules that are controlled and observed inside user generated dashboard inside our cloud platform that can be used as a Saas or On-premise.

The project is in the early stage, we only have a selected group of beta users. We don't plan to make a real business out of this, we are currently open sourcing
the software and selling the hardware in the hope to create a community and create a platform that is useful to me and the other person involved and that I can use
to try technologies that interested me.

Things I learned while working there:

* Kubernetes (microk8s)
* Helm (building public charts to deploy the cloud)
* FreeRTOS (for the firmware of our modules)
* Angular (for front-end and libraries)
* Docker (close to all apps and tooling are dockerized to work on the project)
* Nodejs/loopback4 (for our micro-service)
* MQTT (mosquito) (IoT communication)
* MongoDB (aggregation framework for graphs)
* Rust (central device software, async with tokio)
* RTMP (running RTMP server for streaming webcam and device to the cloud platform)


The use case for the project:

Last year I was running a self-control greenhouse in my house.

The system was reading :

* Air humidity and temperature
* The humidity of the pot of soils
* Webcam to see the setup

The system was acting by:

* Controlling pumps and valves for the water tank and the supplement/water tank to each pot of soil.
* Controlling the fan
* Controlling the light
* Controlling dehumidifier

At that point, the control of the actors was made manually base on the reading of the sensor and
triggering of alarm but we are building a dynamic condition engine to automatically regulate the
environment by linking sensor and actor with conditions.

### autoform and autotable librairie

* [demo site](https://angular-libs.web.app/autoform)S
* [github repo](https://github.com/berlingoqc/angular-libs)


Set of two libraries to build tables and forms dynamically from the typescript code using a single
component.

This is built to be used for my dynamic dashboard of the growbe project. I created annotations to create forms to fill the input of an angular component for the user.


### loopback4 component

I'm a big user of loopback4 for some reason, starting using it for my previous job because it was a choice of the previous developer and keep using it after.

I create many reusable components for various needs. Mainly components that were present in lb3 but not lb4.
This is used for many things in the growbe project, but this repository needs some love.

* [github repo](https://github.com/berlingoqc/lb-extensions/tree/master/src/components)

## Tech Stack


### The languages that I'm actively using

* Java, Kotlin (intermediate)
* Rust (intermediate)
* Typescript (nodejs) (advance)
* Bash (intermediate)
 
### The frameworks that I'm experienced in

* Angular (advance)
* Loopback4 (advance)
* Spring Boot (intermediate)
* Bevy (intermediate)
* FreeRTOS (beginner-intermediate)

### Tools that I'm most experienced in

* GitHub Action (beginner for a while now, don't like it)
* GitLab CI (intermediate)
* Docker (intermediate-advance)
* Kubernetes (intermediate-advance)
* Nginx (intermediate)
* Hugo (intermediate)
* Linux (advance)

### Also familiar with

* Golang (intermediate)
* Python (beginner-intermediate)
* C# (intermediate)
* C++ (intermediate)


## Reach me

You can reach me by email at: `berlingoqc@gmail.com`
