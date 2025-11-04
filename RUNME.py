import subprocess
import sys, os

def run_command(command):
    try:
        result = subprocess.run(command, shell=True, text=True, capture_output=True)
        if result.stdout:
            print("Output:\n", result.stdout)
        if result.stderr:
            print("Errors:\n", result.stderr)
    except Exception as e:
        print("Error running command:", e)

def compile_codes(start, end, custom):
    if start != None:
        os.makedirs("Output", exist_ok=True)
        for i in range(start, end + 1):
            command = f"gcc -o Output/Program{i} Program{i}.c"
            print(f"Compiling Program{i}.c ...")
            run_command(command)
        print("\nCompilation complete.")
    elif start == None:
        os.makedirs("Output", exist_ok=True)
        for i in custom:
            command = f"gcc -o Output/Program{i} Program{i}.c"
            print(f"Compiling Program{i}.c ...")
            run_command(command)
        print("\nCompilation complete.")
        
def smart_int_input(prompt="Enter a number between 1 and 54: ",restrict=True):
    while True:
        try:
            value = int(input(prompt))
            if restrict:
                if (1 <= value <= 54):
                    return value
                else:
                    print("Number must be between 1 and 54.")
        except ValueError:
            print("Please enter a valid integer.")

def smart_string_number_input(prompt="Add your USN to the programs - RVUN25CSE"):
    while True:
        value = input(prompt).strip()
        if value.isdigit() and len(value) <= 3:
            return value
        else:
            print("⚠️ Please enter a numeric value with at most 3 digits (0–999).")


if __name__ == "__main__":  
    gay = False      
    commands = [
        "chmod +x generate_all_programs.sh",
        "./generate_all_programs.sh"
    ]

    while True:
        choice = (input("Proceed to create all programs? [Y/N]")).lower()
        if choice == "y":
            for command in commands:
                run_command(command)
            break
        elif choice == "n":
            print("Next time... right?")
            sys.exit()
            break
        else:
            print("Why dont you obey the rules? I will ask you again, ANSWER PROPERLY")
            gay = True
    
    menu = [
        "1. Compile all the programs",
        "2. Compile a range of programs",
        "3. Compile select programs"
    ]
    for item in menu:
        print(item)
    while True:
        try:
            menu_choice = int(input("Enter the number choice: "))
            if (menu_choice > len(menu)) or (menu_choice < 1):
                print("Not a valid choice")
            else:
                break
        except Exception as e:
            if not gay:
                print("Why dont you obey the rules? I will ask you again, ANSWER PROPERLY")
            elif gay:
                print("Are you retarded? type wrong TWICE in a row? thats not even a choice, type again PROPERLY!")
                
    if menu_choice == 1:
        start = 1
        end = 54
        compile_codes(start,end)
    elif menu_choice == 2:
        start = smart_int_input()
        end = smart_int_input()
        compile_codes(start,end)
    elif menu_choice == 3:
        n = smart_int_input(prompt="How many programs you want to compile?")
        custom = []
        for _ in range(n):
            custom.append(smart_int_input())
        compile_codes(start=None,end=None,custom=custom)
        
    print("*"*44)
    usn_number = smart_string_number_input()
    print("*"*44)
    
    
        
