---
title: "Me"
date: 2022-05-24T11:30:03+00:00
tags: ["me"]
author: "berlingoqc"
showToc: true
TocOpen: true
---

## William Quintal aka berlingoqc

Hello my name is William Quintal , i'm a developer from the nation of Québec (currently trap in the country of Canada).

I create this website to write about my experiences related to programmation, my opinions and to post release and stuff
about my [projects](/public/projects/).

## Job experiences and role

#### Desjardins

First programming job of my life.

I was working on multiple small Angular application to add new components.
Also work a bit with Spring boot microservice with controller generated from
the swagger definition.

This intership allowed me to discover many technologie and concept like :

* Angular
* Kotlin / Spring Boot
* Swagger and OpenAPI
* Postman
* Building api
* Seperation of the different models

#### Alborea

First job working alone.

For most of my time there i was the only one working on there software.

In this job i had to work a lot with external and internal client to build them custom made
full-stack application and i also maintain old full-stack application made by the previous
programmer

the application where:

* in-house portal for timesheet , project management and employee database
* in-house e-learning plateform with the SCROM standard
* many small demo application to try to bring client in.
* update old application to new version of framework (lb and angular)

This job allowed my to:

* Build more experience with angular and start creating libraries to recycle concept.
* Same with nodejs working in loopback3 and latter on porting to loopback4
* Learn docker , dockering all the application for development / testing / deployment.
* Learn CI , when i got there all deployment where manual with `scp` i move to CD/CI using GitHub Action.
* Migrating to loopback4 many component where missing and i had to reimplement some like :
  * Auto generated crud controller that wrap around repository (with mix-in and anonymous class)
  * Datasource for email
  * Controller for assets
  * Plugin dyanmic authorization system with casbin
* Work in relation with the client the get there need and build frame the time necessery to accomplish the project. (dont like this at all)
* Play more with hosting , migrating from plain VM with nodejs running on them with PM2 to docker / docker-compose and kubernetes.

#### Powerside

First time working in a small startup in a team of 3 dev , 1 QA and 1 Team Lead.

In this job i had to work with the in house client to work on there plateform to monitor
the data of there fleet of IoT device that where monitoring electric grid.

I mainly work on the front-end angular application that was i mess. The app was originally
build by an external compagny and latter brought back in-house when the compagny first start
hirring software programmer. In this process the app was badly construct with no regard for
substainability. So the main focus of my job was to bring in new functionnality but in the end
i did a lot of refactoring to reduce the complexity and readability of the codebase. In the end
i also work in the backend stack , this allowed me for the first time to work with a big cloud
provider like AWS

Feature i work on while there:
* Integrate a WYSIWYG editor with multimedia asset to preview and edit dynamic report.
* Working with SQS/MQTT/Lambda to add the capability to send command to specific device in the fleet for maintenance.
* Fixing lots of bugs
* Integration CI/CD to move test that where running on precommit hook to CI/CD with GitHub Actions

Things i learn while working there:

* AWS
  * CloudFormation
  * Lambda
  * SQS
  * IAM
  * EC2
* Angular
* Github Action
  
#### Ticketmaster

* Current job
* Since novembre 2021

In this job i start there by working on new micro-service but after that i move more into a DevOps role
working on there modernization project to move old application from WAR to Spring Boot self hosted and dockerize
application that are deployable onprem and in Kubernetes. I mainly work on the deployment to kubernetes part.


Things i learn while working there:

* Kubernetes (eks)
* Helm charts (creating and using)
* Terraform
* AWS
  * SecretManager (use with in house tooling to resolve secret in application)j
  * IAM 
  * EKS
  * CloudWatch (exporting to prometheus)
* Prometheus
* Spring Boot with Kotlin


## Out of work project


#### Growbe

* [github organisation](https://github.com/growbe2)
* [documentation](https://doc.growbe.ca)

The goal of the growbe project is to create an end-to-end solution to monitor and control automatically different type of environment like a greenhouse primarily

We produce an array of IoT Module that connect to a central device that monitor some module to take action on other modules that are control and observe inside
user generated dashboard inside our cloud plateform that can be use as a Saas or On-premise.

The project is in early stage still , we only have a selected group of beta user. We don't really plan to make a real buisness out of this , we are currently open sourcing
the software and selling the hardware in the hope to create a community and create a plateform that is usefull to me and the other person involve.

Things i learn while working there:

* Kubernetes (microk8s)
* Helm (building public chart to deploy the cloud)
* FreeRTOS (for the firmware of our modules)
* Angular (for front-end and librairie)
* Docker (close to all app and tooling are dockering to work on the project)
* Nodejs/loopback4 (for our micro-service)
* MQTT (mosquitto)
* Mongodb (aggregation framework for graphs)
* Rust (central device software, async with tokio)
* RTMP (running RTMP server for streaming webcam and device to the cloud plateform)

Exemple of usage of the project:

Last year i was running a self control greenhouse in my house.

The system was reading :

* Air humidity and temperature
* Humidity of the pot of soils
* Webcam to see the setup

The system was acting:

* Controlling pump and valve for the water tank and the supplement/water tank to each pot of soil.
* Controlling the fan
* Controlling the light
* Controlling dehumidifier

At that point the controlling of the actor was made manually base on the reading of the sensor and
triggering of alarm but we are building a dynamic condition engine to automatically regulate the
environment by linking sensor and actor.

#### autoform and autotable librairie

* [demo site](https://angular-libs.web.app/autoform)S
* [github repo](https://github.com/berlingoqc/angular-libs)


Set of two librairie to build table and form dynamically from the typescript code using a single
component.

This is build to be use for my dynamic dashboard of the growbe project. I created annotation to
create form to fill the input of an angular component for the user.


## Language experiences

#### Language that i did at one point but havent touch in a while

* Golang (medium)
* Python (beginner-medium)
* C# (medium)
* C++ (medium)


#### Language that i'm actively using

* Java , Kotlin (medium)
* Rust (medium)
* Typescript (advance)
* Bash (medium)


#### Framework that i'm experience in

* Angular (advance)
* Loopback4 (advance)
* Spring Boot (medium)
* Bevy (medium)

#### Tool that i'm experience in

* GitHub Action (beginner for a while now, dont really like it)
* GitLab CI (medium)
* Docker (medium-advance)
* Kubernetes (medium-advance)
* Nginx (medium)
* Hugo (medium)
* Linux (advance)

## Reach me

You can reach me by email at: `berlingoqc@gmail.com`
