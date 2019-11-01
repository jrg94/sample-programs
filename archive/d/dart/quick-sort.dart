
import 'dart:io';

import 'bubble-sort.dart';

/**
 *
 * Merge sort Algorithm from introduction to algorithm
 */

quicksort(List lst,int start,int end){
  if(start < end){

    int mid = partition(lst,start,end);
    //How to use recursive calls
    //Divide and conquer
    quicksort(lst, start, mid-1);
    quicksort(lst, mid, end);
  }
}

partition(List lst,int start,int end){
  //Sort the array accordingly to the pivot_element
  var pivot_element = lst[end];
  var start_position = start -1;
  for (var i = start; i < end; i++){
      if(lst[i] <= pivot_element){
        start_position++;
        swap(lst, start_position, i);
      }
  }
  swap(lst, start_position+1, end);
  return start_position+1;
}

swap(List<int> lst, int position, int position2){
  var tmp = lst[position];
  lst[position] = lst[position2];
  lst[position2] = tmp;
}

List<int>parseInput(List<String> input){
  List<int> lst = [];
  var inputString = input.join().replaceAll(" ", "").replaceAll("'", "").split(",");
  for(var stringNumber in inputString){
    lst.add(int.parse(stringNumber));
  }
  return lst;
}

main(List<String> args) {

  try {
    List<int> lst = parseInput(args);
    if (lst.length <= 1) exitWithError();
      quicksort(lst, 0, lst.length - 1);
      print(lst);
  }catch (e) {
    exitWithError();
  }
}