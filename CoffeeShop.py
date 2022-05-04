# -*- coding: utf-8 -*-
"""
Created on Wed May  4 14:32:53 2022

@author: jahme
"""

# Coffee Shop code
print("Welcome to the Coffee Shop!")

# choose a size 
allsizes = ["small", "medium", "large"]
while True:
    size = (input("Do you want small, medium, or large coffee?: ")).lower()
    if size in allsizes:
        break
    else:
        print("Invalid Input. Please choose a valid option.");
        
# choose a coffee type
alltypes = ["brewed", "espresso", "cold press"]
while True:
    coffeetype= (input("Do you want brewed, espresso, or cold press?: ")).lower()
    if coffeetype in alltypes:
        break
    else:
        print("Invalid Input. Please choose a valid option.");

# choose a syrup
syrups = ["hazelnut", "vanilla", "caramel"]
while True:
    choice=(input("Do you want a flavored syrup? (Yes or No): ")).lower()
    if choice=="yes":
        flavour= (input("Do you want hazelnut, vanilla, or caramel?: ")).lower()
        if flavour in syrups:
            break
        else:
            print("Invalid Input. Please choose a valid option.");
    elif choice=="no":
        break
    else:
        print("Invalid Input. Please choose a valid option.");

# calculating costs
sizePrices=[2,3,4]
sizeCost=sizePrices[allsizes.index(size)]
typePrices=[0,0.5,1]
typeCost=typePrices[alltypes.index(coffeetype)]

if choice=="yes":
    totalCost=sizeCost+typeCost+0.5
    print("You have asked for a {0} small cup of {1} coffee with {2} syrup.".format(size,coffeetype,flavour));

if choice=="no":
    totalCost=sizeCost+typeCost
    print("You have asked for a %s small cup of %s coffee without syrup."%(size,coffeetype));

# Final output
print("Your cup of coffee costs $"+str('%.2f' % totalCost))
total_w_tip=totalCost*1.15
print("The total cost with a 15% tip is $"+'%.2f' % total_w_tip);