# refurbished-marketplace

## Project Description
The C2C Ecommerce Platform is designed to provide a marketplace for users to buy and sell refurbished products. It offers an added layer of security by integrating a Teachable Machine model to detect counterfeit products. The platform emphasizes user trust and transactions in a peer-to-peer environment.

The platform is built using FlutterFlow, a low-code Flutter framework that enables users to build Flutter applications visually. It also utilizes various technologies such as Firestore, imgBB, and a REST API call to a [Flask backend server](https://github.com/phuchoang2603/teachable-machine-flask-API-server) that handles the Teachable Machine model.

### Current Features of the Project:
- User Registration and Authentication: Allow users to create accounts, login, and manage their profile information.
- Product Listings: Enable users to list their refurbished products for sale, including details like images, descriptions, and pricing.
- Product Search: Implement a search functionality to allow users to discover products based on keywords, categories, or other filters.
- Ratings and Reviews: Enable users to rate and review products and sellers, promoting transparency and accountability.
- Counterfeit Detection: Utilize a Teachable Machine model to automatically verify the authenticity of listed products.

### Future Features of the Project:
- [ ] Auction System: Implement an auction system to allow users to bid on products and sellers to set a minimum price.
- [ ] Transaction Management: Allow users to manage their transactions, including payments, shipping, and delivery.
- [ ] Product Recommendations: Implement a recommendation system to suggest products based on user preferences and interests.
- [ ] Virtual assistant chatbot: Enable users to interact with a chatbot to get answers to their questions and resolve issues.
- [ ] Custom model training: Enable users to train their own Teachable Machine model to detect counterfeit products.

## Technologies Used
The technologies used in this project include:

- Firestore: A flexible, scalable NoSQL database for storing and managing user data, product listings, and transactions.
- imgBB: An image hosting service to store product images securely and retrieve them when needed.
- REST API: Utilize a REST API call to a Flask backend server that handles the Teachable Machine model. The backend server processes the image data and returns the results for counterfeit detection.
- [Flask Backend Server Repository](https://github.com/phuchoang2603/teachable-machine-flask-API-server): The repository link for the Flask backend server that handles the Teachable Machine model.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### Getting started continued:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
