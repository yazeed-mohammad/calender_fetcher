
## Features
### - Fetch calender years, months, days as calender to use it in custom widgets as listView and gridView 
### - you can fetch calender by call CalenderController class.
### - CalenderController will return a Years list, every year has multi variables.
####    - Year(this.id, this.value, this.months, this.isSelected, this.isCurrentYear)
#####       - id: from 0 to n.
#####       - value: year value such as (2020, 2021, 2022 ,...).
#####       - months: List<Month>.
#####       - isSelected: when you call initial function isSelected will be false else if isCurrentYear is true.
#####       - isCurrentYear:true if this is current year else false.

## Getting started
### just call CalenderController().getFullCalender(startYear, endYear) in List<Year>;


# calender_fetcher


