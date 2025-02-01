void main() {
  String role = "editor";
  
  switch (role) {
    case "admin":
      print("Admin Access");
      break;
    case "editor":
      print("Editor Access");
      break;
    case "viewer":
      print("Viewer Access");
      break;
    default:
      print("No Access");
  }
}