# iOS-demo

The iOS demo app for the Klasha payment gateway.
For this demo, Klasha pay was used as the preferred payment option for buying a pair of shoes.

# Requirements
- iOS ~> 13
- Xcode ~> 13 (13 compatible)
- Swift ~> 4.2

# Installation
Clone the repository
```sh
$ git clone https://github.com/klasha-apps/ios-demo.git
$ cd ios-demo/
$ cd Klasha\ Store/
$ pod install
```

Open the file `Klasha Store.xcworkspace` using Xcode
Allow the project to build and update build settings.
Click on the play button at the top left corner to build and run the project


### HOME

After running the app, you are taken to the home page where you see the particular shoe for sale. You can add and remove this shoe from cart. After adding to cart, you click 

on the cart icon at the top right icon to see the details of your cart. If the shoe has not been added to cart, you won't be able to see details of the item in your cart.

<img width="282" alt="Home" src="https://user-images.githubusercontent.com/69020285/158070944-265057ac-04c0-4a37-aa1d-7fe0c4f5fead.png">

### CONFIRM PURCHASE

On clicking on the cart icon on the top right corner, you are taken to the purchase confirmation page where you see details of your purchase as well as options for pickup and delivery address. Click on 'Continue to Payment' to proceed to pay for the item. This brings up a payment option dialog where you select the Pay with Klasha option to continue. This presents the various options provided by the Klasha payment gateway.

<img width="250" alt="Confirmation" src="https://user-images.githubusercontent.com/69020285/158071105-ef410fc1-ab9f-4d9a-93a2-995f3d82aae7.png"> <img width="250" alt="Payment options" src="https://user-images.githubusercontent.com/69020285/158071124-44888c8d-f033-409a-a935-4d0b04e0faf8.png"> <img width="250" alt="Klasha Payment options" src="https://user-images.githubusercontent.com/69020285/158071241-c6796813-6788-4c0c-b600-2677b0b38b36.png"> 


### PAY WITH WALLET DEMO

https://user-images.githubusercontent.com/69020285/158071331-d0ae3b0a-c387-46a8-9257-135835cf6c48.mp4


### PAY WITH CARD DEMO

https://user-images.githubusercontent.com/69020285/158071417-0947afc7-81ff-4d98-8d39-ff4b553da92b.mp4





