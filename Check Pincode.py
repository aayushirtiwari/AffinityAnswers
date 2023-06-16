#!/usr/bin/env python
# coding: utf-8



import requests

def validate_pincode(address, pincode):
    api_url = f"http://postalpincode.in/api/pincode/{pincode}"
    response = requests.get(api_url)
    
    if response.status_code == 200:
        data = response.json()
        if data["Status"] == "Success":
            post_office = data["PostOffice"]
            for office in post_office:
                if office["Name"] in address:
                    return True
    return False

# Input address
address = input("Enter the address: ")

# Extract PIN code from address
words = address.split()
pincode = ""
for word in words:
    if word.isdigit() and len(word) == 6:
        pincode = word
        break

if pincode:
    is_valid = validate_pincode(address, pincode)
    if is_valid:
        print(f"The PIN code {pincode} is valid for the address.")
    else:
        print(f"The PIN code {pincode} is not valid for the address.")
else:
    print("No valid PIN code found in the address.")







