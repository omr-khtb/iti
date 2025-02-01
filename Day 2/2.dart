void main() {
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {3, 4, 5, 6, 7};
  
  Set<int> unionSet = set1.union(set2);
  
  Set<int> intersectionSet = set1.intersection(set2);
  
  Set<int> differenceSet = set1.difference(set2);
  
  print("Union: $unionSet");
  print("Intersection: $intersectionSet");
  print("Difference: $differenceSet");
}