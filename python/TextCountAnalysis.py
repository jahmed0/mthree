# -*- coding: utf-8 -*-
"""
Created on Mon May  9 11:19:50 2022

@author: jahme
"""

#Text Count Analysis program

#Original string:
s = """Imagine a vast sheet of paper on which straight Lines, Triangles, Squares, Pentagons, Hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows - only hard and with luminous edges - and you will then have a pretty correct notion of my country and countrymen. Alas, a few years ago, I should have said "my universe": but now my mind has been opened to higher views of things."""

print("Welcome to the Text Count Analysis program. The orignal string for this program is: \n\n"+s+"\n")

def TextCountAnalysis(some_str):
    import string #import the string module
    
    ## Converting the string to lowercase characters
    s_lower=some_str.lower()
    ### Split the lowercase string into individual words.
    words=s_lower.split()
    ### Removing the punctuation from the lowercase words. Assumed that all punctuation is either the first character or the last character of each item in the list.
    punctuation_list =  list(string.punctuation) #use the string.punctuation built-in python to create a list of all punctuations
    #Created empty list to store words without punctuation
    w_clean = list()

    for element in words:
        # checks if element is punctuation and length of element
          if (element not in punctuation_list) and (len(element)>=1):
            if element[0] in punctuation_list:
                w_clean.append(element[1:])
            elif element[(len(element)-1)] in punctuation_list:
                w_clean.append(element[:(len(element)-1)])
            else:
                w_clean.append(element);

    ### Perform a count analysis on the words without punctuation characters.
    word_freq = dict() 
    #Calclating frequency of each word in list and storing results in dictionary 
    for i in range( len(w_clean) ):
        if w_clean[i] not in word_freq:
            word_freq[ w_clean[i] ] = 1;
        else:
            val=word_freq[ w_clean[i] ]
            word_freq[ w_clean[i] ] = (val+1)


    ### Display the dictionary with the word counts and the number of distinct words in the #original string.
    print("Frequency of each distinct word in the string: \n")
    for key, val in word_freq.items():
        print( key, end=" : ")
        print( val)

    numberofwords=len(w_clean)
    print("\nNumber of words in string: ",numberofwords)

    distinct=set(w_clean)
    print("Number of distinct words in string:: ",len(distinct))
    return word_freq,w_clean

## Returns cleaned word frequency dictionary and cleaned words list
freqdict,cleanlist=TextCountAnalysis(s)

##### Stretch actiivities #####

### User can enter their own text at runtime (after origninal program ends) and perform the operations on the user input.
while True:
    choice = input("Would you like to enter your own string? (y/n): ").lower()
    if choice=="y":
        user_str=input("Enter your string to perform the text count analysis: ")
        freqdict,cleanlist=TextCountAnalysis(user_str)
    elif choice=="n":
        break
    else:
        print("Invalid Input. Please choose a valid option.")

### Prompt the user for a word and return that word's frequency in a selected string
search=input("Search for a word's frequency in the original string: ")
if search in freqdict:
    print("'%s' was found %s times in the orignal string" %(search,(freqdict.get(search))))
else:
    print("'%s' was not found in the original string"%(search))

### User can sort the items in the dictionary alphabetically.
while True:
    choice = input("Would you like to sort the dictionary alphabetically? (y/n): ").lower()
    if choice=="y":
        az_sorted_dict = {key: value for key, value in sorted(freqdict.items())}
        for key, val in az_sorted_dict.items():
            print( key, end=" : ")
            print( val)
        break
    elif choice=="n":
        break
    else:
        print("Invalid Input. Please choose a valid option.")

### User can sort the items in the dictionary from the highest frequency to the lowest frequency (or vice versa).
while True:
    choice = input("Would you like to sort the words in the dictionary by frequency? (y/n): ").lower()
    if choice=="y":
        while True:
            sorted_dict= {}
            choice2=input("From the highest frequency to the lowest frequency (1) or from lowest frequency to highest frequency (2)? (1/2): ")
            if choice2=="1":
                sorted_keys = sorted(freqdict, key=freqdict.get, reverse=True) #sort by highest to lowest
                print("\nWords in the dictionary sorted by highest frequency to the lowest frequency: ")
            elif choice2=="2":
                sorted_keys = sorted(freqdict, key=freqdict.get) #sort by lowest to highest
                print("\nWords in the dictionary sorted by lowest frequency to the highest frequency: ")
            else:
                print("Invalid Input. Please choose a valid option.")
                break
            #Display the sorted dictionary 
            for keys in sorted_keys:
                sorted_dict[keys] = freqdict[keys]
            for key, val in sorted_dict.items():
                    print( key, end=" : ")
                    print( val)
            break
    elif choice=="n": ## exiting the while loop will end the program
        print("End of Text Count Analysis program")
        break
    else:
        print("Invalid Input. Please choose a valid option.")
