import 'dart:io';
//class for learner or mentor
class MentorOrStudent{
    String interest,mentorOrLearner,name,availableTime;
    int id,type,limit=0,time;
    var stackList = new List(100),nameList=new List(100),atlist=new List(100),mOrL = new List(100);
    /*stack list for tracking stack/interest
    name list for names
    atlist for available time
    mOrL is for checking mentor or Learner
  */
    void add(){//this function collect the details of all mentors and learners
      print("Enter the name of person:");
      name = stdin.readLineSync();
      limit++;
      this.nameList[limit]=name;
      this.addStacks();
      this.setMentorOrLearner();
      this.setAvailableTime();
    }
    void addStacks(){ //function specified in problem statement
      print("Enter the Area of Interest / Expertise:");
      interest = stdin.readLineSync();
      this.stackList[limit]=interest;
    }
    void setMentorOrLearner(){//function specified in problem statement
      print("\n\n Type of Enrollment");
      print(" Enter 1 for Mentor \n Enter 2 for Learner\n");
      print("Enter the input:");
      type = int.parse(stdin.readLineSync());
      this.mOrL[limit]=type;
    }
    void setAvailableTime(){//function specified in problem statement
      if (type == 1){
        print("Enter the available time for this mentor (Hours):");
        time=int.parse(stdin.readLineSync());
        this.atlist[limit]=time;
      }
      else{
        atlist[limit]=0;
      }
    }
}
void main() {
  MentorOrStudent person = new MentorOrStudent();
  String n,stack;
  int i,time;
   void getMentor(var x,var y,var z,int m){         //function specified in problem statement
                                                    // x - stack list
                                                    // y - enrollment list
                                                    // z - time available (for mentors)
   if (m==0)
   {
      // x stack list
     // y mentor or learner list
     // z available time list
     print("No one has enrolled. Imporve Promotion ;D");
   }
   else{
    for (i=1;i<=m;i++){
      if (y[i]==1){
        stack=x[i];
        time=z[i];
        print("\t A mentor for $stack is available for $time hours \n");
      }
    }
   }
   }
  while(true)
  {
    print("MAIN MENU");
    print("CHOICES \n 1. Add New Person \n 2. Search Existing Mentors \n 3. Exit \n Enter Choice:");
    n = stdin.readLineSync();
    if (n=='1')
    {
      person.add();
    }
    else if (n=='2'){
      getMentor(person.stackList,person.mOrL,person.atlist,person.limit);
    }
    else if (n=='3'){
      break;
    }
    else{
      print("Invalid Choice");
    }
  }
}