# refurbished-marketplace
![Platform Logo](./assets/images/app_launcher_icon.png)

## Project Description
The C2C Ecommerce Platform is designed to provide a marketplace for users to buy and sell refurbished products. It offers an added layer of security by integrating a Teachable Machine model to detect counterfeit products. The platform emphasizes user trust and transactions in a peer-to-peer environment.

The platform is built using FlutterFlow, a low-code Flutter framework that enables users to build Flutter applications visually. It also utilizes various technologies such as Firestore, imgBB, and a REST API call to a [Flask backend server](https://github.com/phuchoang2603/teachable-machine-flask-API-server) that handles the Teachable Machine model.

To use the app, you can download the APK file from the [Releases](https://github.com/phuchoang2603/techburst-counterfeit/releases/tag/10) page and install it on your Android device. Alternatively, you can clone the repository and run the app on your local machine (see [Getting Started](#getting-started) for more details).

## Project Features
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
To get started with this Flutter project, follow these steps:
1. Clone the repository to your local machine:
`git clone https://github.com/username/repository.git`
2. Install Flutter by following the official Flutter installation guide: [Flutter Install Guide](https://docs.flutter.dev/get-started/install)
3. Open the project in your preferred IDE (e.g., Android Studio, VS Code).
4. Install dependencies by running the following command in the project directory:
`flutter pub get`
5. Run the application using the following command:
`flutter run`
Congratulations! You have successfully set up the Flutter project created with FlutterFlow.

## Resources
- [Flutter Documentation](https://flutter.dev/docs)
- [Firestore Documentation](https://firebase.google.com/docs/firestore)
- [imgBB Documentation](https://api.imgbb.com/)
- [Flask Documentation](https://flask.palletsprojects.com/)

For additional guidance and support, refer to the documentation provided by the respective technologies.