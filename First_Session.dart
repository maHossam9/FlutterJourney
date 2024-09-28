//Exercise1
void Swapping(var a,var b){
  print("Values before swapping is \n\n first variable : $a\n\nSecond variable is : $b\n\n");
  var temp;
  temp=a;
  a=b;
  b=temp;
  print("Values after swapping is \n\n first variable : $a\n\nSecond variable is : $b\n\n");
}
//Exercise2
void checker(List<int> numbers){
  int len=numbers.length;
  
  for (int i=0;i<len;i++){
    if(numbers[i]%2==0){
      
      print(numbers[i].toString() + " is Even");
    }else 
     
      print(numbers[i].toString()+" is Odd");
  }
}
//Exercise3
void largest(List<int> mylist){
  int largestNum=0;
  int len=mylist.length;
  for (int i=0;i<len;i++){
    if(largestNum<mylist[i]){
      largestNum=mylist[i];
    }
  }
  print(largestNum);
}
//Exercise4
void PrintOdd(List<int> mylst){
  int len=mylst.length;
  for (int i=0;i<len;i++){
    if(mylst[i]%2!=0){
    print(mylst[i]);
    }else 
   continue;
  }
}
//Exercise5
void Lessthanfive(List<int>nums){
  int len=nums.length;
  for (int i=0;i<len;i++){
    if(nums[i]<5){
    print(nums[i]);
    }else 
   continue;
  }
}
/*List<int> NoDupes(List<int>nums){
  int len=nums.length;
  List<int> mod=[];
  for(int i=0;i<len;i++){
    for(int j=i+1;j<len;j++){
      if(nums[i]==nums[j]){
        break;
      }else mod.add(nums[j]);
    }
    
  }
}*/
//Exercise6
List<int> Common(List<int>L1,List<int>L2){
  L1=L1.toSet().toList();
  L2=L2.toSet().toList();
  int len1=L1.length;
  int len2=L2.length;
  List<int> CommonList=[];
  for(int j=0;j<len1;j++){
    for(int k=0;k<len2;k++){
      if(L1[j]==L2[k]){
        CommonList.add(L1[j]);
      }else continue;
    }
  }
  return CommonList;
}
//Exercise7
List<int> EvenList(List<int>Nums){
  int len=Nums.length;
  List<int> Even=[];
  for(int i=0;i<len;i++){
    if(Nums[i]%2==0){
      Even.add(Nums[i]);
    }else continue;
  }
  return Even;
}

void main(){
  var x="Hi";
  var y="Hello";
  var lis=[8,9,4,15,6,3];
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int>NewList=EvenList(b);
  for(int i=0;i<NewList.length;i++){
    //Exercise7
    print(NewList[i]);
  }
  List<int>CommList=Common(a,b);
  for(int i=0;i<CommList.length;i++){
    //Exercise6
    print(CommList[i]);
  }
  //Exercise1
  Swapping(x,y);
  //Exercise2
  checker(lis);
  //Exercise3
  largest(lis);
  //Exercise4
  PrintOdd(lis);
  //Exercise5
  Lessthanfive(lis);
  
}


