# Boris Bikes

First Makers Challenge: create a program to emulate all docking stations, bikes and infrastructure for a Boris Bike network.

## Goals:
- Test-drive a simple program using objects and methods.
- Pair using the driver/navigator style.
- Use basic OO principles (encapsulation and SRP).

## How to run

Using irb:
```
irb
require 'docking_station.rb'
```

Running tests:
Tests written with rspec, run from root directory:
```
rspec
```

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
|Objects|Messages|
|----------|-----------|
|Person||
|Bike||
|Docking Station|release_bike|

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

|Objects|Messages|
|----------|-----------|
|Person||
|Bike|working?|

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```

|Objects|Messages|
|----------|-----------|
|Person||
|Docking Station|dock_bike|

```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

Required:
- Docking station needs ability to keep a record docked bikes (instance variable required).

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

Required:
- Docking stations can only release bikes saved into bikes instance variable - guard condition.

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
````

Required:
- Default capacity constant.

```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

Required:
- Default capacity set as a default parameter when creating new docking station instance.

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```

|Objects|Messages|
|----------|-----------|
|Person||
|Bike|report_broken|

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```

Required:
- Guard condition to prevent broken bikes from being released.

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

Required:
- No changes neccessary, above implementation stopping the release of broken bikes should not alter ability to accept broken bikes.





