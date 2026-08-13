import subprocess
def add(): 
 subprocess.run(["git","status"])
 add = input("you want to add work on git hub , (y/n):").lower()
 if add == "y":
  option = input("Add all files or a particular file?  (all/p)").lower()
  if option == "p":
   file = input("enter file name").lower()
   subprocess.run(["git","add", file],check=True)
   print(f"{file} added successfully")
   return True
  elif option =="all": 
   subprocess.run(["git","add","."],check=True)
   print("all file added successfully")
   return True
  else :
   print("invelid option")
   return False
 else:
  print("file not added") 
  return False

def commit_push():
  messgge = input("enter your commitment messgae:  ")
  subprocess.run(["git","commit","-m",messgge],check=True)
  print("your file commited successfully")
  try:
   subprocess.run(["git","push","origin","main"], check=True)
  # you can change this line if your branch & repo name are different
   print("your file push to github successfully")
  except subprocess.CalledProcessError:
   print("Push Failed")   
 #subprocess.run(["git","pull"],check=True)
 #print("your data pull successfully to your local file")


if add():
       commit_push()
else :
  print("no add , commit and push")