
# Calender Fetcher
[![Pub Version](https://img.shields.io/pub/v/calender_fetcher?color=green&label=pub.dev&logo=version)](https://pub.dev/packages/calender_fetcher)


A Flutter package to use the calender.

## Features

- 🚀 Cross platform: mobile, desktop, browser.
- ❤️ Simple.
- 🎈 **NO** native dependencies.


## Getting started
You can fetch calender (Years, Months, Days) between tow given years (start, end).

```
List<Year> calender = CalenderController().getFullCalender(startYear, endYear);
``` 

**Year : `Year(this.id, this.value, this.months, this.isSelected, this.isCurrentYear)`**
- `id`: unique int number.
- `value`: int year value(1997, 2015, 2023 ... etc).
- `months`: `List<Month>`
- `isSelected`: bool value that changed if user press on this year `true|false`.
- `isCurrentYear`: bool value if `yyyy` equal `value`.
- `data`: dynamic variable to add any type of data in Year.

**Month: `Month(this.id, this.name, this.value, this.days, this.isSelected, this.isCurrentMonth);`**
- `id`: unique int number.
- `name`: month name (January, February, March ... etc);
- `value`: int month value(1, 2, 3 ... 12).
- `days`: `List<Day>`
- `isSelected`: bool value that changed if user press on this month `true|false`.
- `isCurrentMonth`: bool value if `yyyy/MM` equal `value`.
- `data`: dynamic variable to add any type of data in Month.

**Day: `Day(this.id, this.name, this.value, this.isSelected, this.isToday);`**
- `id`: unique int number.
- `name`: weekday name (Saturday, Sunday ...etc).
- `value`: monthDay (1, 2, 3, 4, 5, ... 31)
- `isSelected`: bool value that changed if you press on this day  `true|false`.
- `isToday`: bool value if `yyyy/mm/dd` date equal `today`.
- `data`: dynamic variable to add any type of data in Day.
