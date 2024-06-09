
enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

class Week {
  static String getDayMessage(Day day) {
    switch (day) {
      case Day.Monday:
        return 'Start day!';
      case Day.Tuesday:
        return 'Second day .';
      case Day.Wednesday:
        return 'Hump day!';
      case Day.Thursday:
        return 'nearly the weekend!';
      case Day.Friday:
        return 'day to pray juma!';
      case Day.Saturday:
        return ' relaxation!';
      case Day.Sunday:
        return 'Rest and prepare for the week ahead.';
      default:
        return 'Invalid day!';
    }
  }
}

void main() {
  print(Week.getDayMessage(Day.Monday));    
  print(Week.getDayMessage(Day.Friday)); 
  print(Week.getDayMessage(Day.Tuesday));  
  print(Week.getDayMessage(Day.Thursday));    
}