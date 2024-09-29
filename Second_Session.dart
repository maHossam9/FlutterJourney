List<num> RemoveDuplicates(List<num> Original){
  List<num>NewList=[];
  for(int i =0 ; i<Original.length;i++){
    int cnt=0;
    for(int k =i+1 ; k<Original.length;k++){
      if (Original[i]==Original[k]) {
        cnt++;
      }
    } if(cnt==0){
      NewList.add(Original[i]);
    }
  }
  return NewList;
}
num CalcSum(List<num>Mylist){
  num Sum=0;
  for(int i=0;i<Mylist.length;i++){
    Sum+=Mylist[i];
  }
  return Sum;
}


void main(){
  List<num>  a = [1, 1, 2, 2, 5, 5, 13, 13, 55, 55, 89];
  print("List before, with dupes : "+a.length.toString());
  a.forEach(print);
  List<num> NoDupes=RemoveDuplicates(a);
  print("List After, no dupes : "+NoDupes.length.toString());
  NoDupes.forEach(print);
  print("Sum of numbers of the the list with the dupes "+CalcSum(a).toString());

  print("Sum of numbers of the the list with no dupes "+CalcSum(NoDupes).toString());

}
