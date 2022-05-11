# -*- coding: utf-8 -*-
"""
Created on Wed May 11 18:54:12 2022

@author: jahme
"""

# Junayed Ahmed 11/05/2022

### Defining objects and classes

class FoodItem:
    name = None
    price = None
    def __init__(self,nm,pr):
        self.name = nm
        self.price = pr

class Burger(FoodItem):
    meat = None
    size = None
    def __init__(self,nm,pr,mt,sz):
        FoodItem.__init__(self,nm,pr)
        self.meat = mt
        self.size = sz
    def details(self):
        print("    -"+self.size)
        
class Drink(FoodItem):
    flavour = None
    size = None
    def __init__(self,nm,pr,flv,sz):
        FoodItem.__init__(self,nm,pr)
        self.flavour = flv
        self.size = sz
    def details(self):
        print("    -"+self.size)

class Side(FoodItem):
    size = None
    def __init__(self,nm,pr,sz):
        FoodItem.__init__(self,nm,pr)
        self.size = sz
    def details(self):
        print("    -"+self.size)

class Combo(FoodItem):
    size = None
    meat = None
    drink = None
    side = None
    def __init__(self,nm,pr,sz,mt,dr,sd):
        FoodItem.__init__(self,nm,pr)
        self.size = sz
        self.drink = dr
        self.meat = mt
        self.side = sd
    def details(self):
        print("    -"+self.size)
        print("    -"+self.drink)
        print("    -"+self.side)

class Order:
    orderName = None
    total = 0.0
    orderItems = []

    def __init__(self, OrderName):
        self.orderName = OrderName

    def addItem(self, item):
        self.orderItems.append(item)
        self.total=self.total+item.price
    
    def viewOrder(self):
        myformat = "{:<30}{}"
        print("====================================\nOrder Name: j"+self.orderName+": \n")
        print("\n"+myformat.format("Item Name:","Price: "))
        for i in range(len(self.orderItems)):
            print(myformat.format(self.orderItems[i].name,("${0:.2f}".format(self.orderItems[i].price))))
            self.orderItems[i].details()
        print("\n"+myformat.format("Order Total: ",("${0:.2f}".format(self.total))))
        print("====================================\n")
        
### Defining functions for user inputs and storing as objects
def user_input_burger():
    #ask user for input and store it in burger object
    meat={"Chicken":1,"Beef":0.5}
    sizes={"Small":1,"Medium":2,"Large":3}
    print("\nPlease customise your burger or type 'quit' to cancel the item: ")
    orderstatus=0
    while orderstatus==0:
        mt_choice=(input("Would you like a Chicken or Beef burger? :  ")).title()
        if mt_choice=="Quit":
            orderstatus=2
        elif (mt_choice in meat):
            sz_choice=(input("Would you like a Small, Medium or Large burger? :  ")).title()
            if sz_choice=="Quit":
                orderstatus=2
            elif (sz_choice in sizes):
                print("You have selected a %s %s burger" %(sz_choice,mt_choice))
                price=meat[mt_choice]+sizes[sz_choice]
                name=mt_choice+" Burger"
                b = Burger(name,price,mt_choice,sz_choice)
                orderstatus=1
            else:
                print("Invalid input. Please select a valid option.")
        else:
            print("Invalid input. Please select a valid option.")
    if orderstatus==2:
        b=0             
    return b
 
def user_input_drink():
    #ask user for input and store it in drink object
    drinks={"Coke":0.5,"Sprite":0.5,"Fanta":1}
    sizes={"Small":0.5,"Medium":1,"Large":2}
    print("\nPlease customise your drink or type 'quit' to cancel the item: ")
    orderstatus=0
    while orderstatus==0:
        dr_choice=(input("Would you like a Coke, Sprite or Fanta drink? :  ")).title()
        if dr_choice=="Quit":
            orderstatus=2
        elif (dr_choice in drinks):
            sz_choice=(input("Would you like a Small, Medium or Large drink? :  ")).title()
            if sz_choice=="Quit":
                orderstatus=2
            elif (sz_choice in sizes):
                print("You have selected a %s %s" %(sz_choice,dr_choice))
                price=drinks[dr_choice]+sizes[sz_choice]
                name=dr_choice+" Drink"
                d = Drink(name,price,dr_choice,sz_choice)
                orderstatus=1
            else:
                print("Invalid input. Please select a valid option.")
        else:
            print("Invalid input. Please select a valid option.")
    if orderstatus==2:
        d=0             
    return d
 
def user_input_side():
    #ask user for input and store it in side object
    sides={"Fries":1,"Onion Rings":2, "Salad":0.5}
    sizes={"Small":1,"Medium":2,"Large":3}
    print("\nPlease customise your side or type 'quit' to cancel the item: ")
    orderstatus=0
    while orderstatus==0:
        sd_choice=(input("Would you like Fries, Onion Rings or Salad? :  ")).title()
        if sd_choice=="Quit":
            orderstatus=2
        elif (sd_choice in sides):
            sz_choice=(input("Would you like a Small, Medium or Large side? :  ")).title()
            if sz_choice=="Quit":
                orderstatus=2
            elif (sz_choice in sizes):
                print("You have selected a %s %s" %(sz_choice,sd_choice))
                price=sides[sd_choice]+sizes[sz_choice]
                name=sd_choice+" Side"
                s = Side(name,price,sz_choice)
                orderstatus=1
            else:
                print("Invalid input. Please select a valid option.")
        else:
            print("Invalid input. Please select a valid option.")
    if orderstatus==2:
        s=0 
    return s
 
def user_input_combo():
    #ask user for input and store it in combo object
    sizes={"Small":4,"Medium":6,"Large":8}
    drinks={"Coke":0.5,"Sprite":0.5,"Fanta":1}
    meat={"Chicken":1,"Beef":0.5}
    sides={"Fries":1,"Onion Rings":2, "Salad":0.5}
    print("\nPlease customise your Combo Meal or type 'quit' to cancel the item: ")
    orderstatus=0
    while orderstatus==0:
        sz_choice=(input("Would you like a Small, Medium or Large combo? :  ")).title()
        if sz_choice=="Quit":
            orderstatus=2
        elif (sz_choice in sizes):
            mt_choice=(input("Would you like a Chicken or Beef burger combo? :  ")).title()
            if mt_choice=="Quit":
                orderstatus=2
            elif (mt_choice in meat):
                dr_choice=(input("Would you like a Coke, Sprite or Fanta drink? :  ")).title()
                if dr_choice=="Quit":
                    orderstatus=2
                elif (dr_choice in drinks):
                    sd_choice=(input("Would you like Fries, Onion Rings or Salad? :  ")).title()
                    if sd_choice=="Quit":
                        orderstatus=2
                    elif (sd_choice in sides) :
                        print("You have selected a {0} {1} Combo meal with a {0} {2} and {3}".format(sz_choice,mt_choice,dr_choice,sd_choice))
                        price=sizes[sz_choice]+drinks[dr_choice]+meat[mt_choice]+sides[sd_choice]
                        name=mt_choice+" Burger Combo Meal"
                        c = Combo(name,price,sz_choice,mt_choice,dr_choice,sd_choice)
                        orderstatus=1
                    else:
                        print("Invalid input. Please select a valid option.")
                else:
                    print("Invalid input. Please select a valid option.")
            else:
                print("Invalid input. Please select a valid option.")
        else:
            print("Invalid input. Please select a valid option.")
            
    if orderstatus==2:
        c=0 
    return c

### Defining main program funciton 
def take_order():
    #ask user for name for the order
    #repeat taking order until client is done 
    user=(input("Welcome to Burger Shop! Please enter your name: ")).title()
    newOrder = Order(user)
    while True:
        print("\nMenu items: \n1. Burger \n2. Drinks \n3. Side \n4. Combos \n\n5. View Order Details \n6. End Order & Pay \n0. Cancel Order")
        choice=input("\nPlease enter an option (1-4) for menu items, (5-6) to view or pay, or (0) to cancel and quit: ")
        if choice=="1":
            burger = user_input_burger()
            if burger != 0:
                newOrder.addItem(burger)
                print("Your choice '" + burger.name +"' was added to order.\n")
            else:
                print("Item cancelled.\n")
            
        elif choice=="2":
            drink = user_input_drink()
            if drink != 0:
                newOrder.addItem(drink)
                print("Your choice '" + drink.name +"' was added to order.\n")
            else:
                print("Item cancelled.\n")
            
        elif choice=="3":
            side = user_input_side()
            if side != 0:
                newOrder.addItem(side)
                print("Your choice '" + side.name +"' was added to order.\n")
            else:
                print("Item cancelled.\n")
            
        elif choice=="4":
            combo = user_input_combo()
            if combo != 0:
                newOrder.addItem(combo)
                print("Your choice '" + combo.name +"' was added to order.\n")
            else:
                print("Item cancelled.\n")
            
        elif choice=="5":
            print("\nCurrent Order Details: ")
            newOrder.viewOrder()
        
        elif choice=="6":
            print("\nOrder Receipt: ")
            newOrder.viewOrder()
            print("Thank you for your business. We hope your enjoy your meal, %s."%user)
            break

        elif choice=="0":
            print("Order Cancelled. \nThank you for your business.")     
            break

### main program
take_order()
