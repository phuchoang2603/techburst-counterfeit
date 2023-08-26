# Counterfeit Product Detection using Teachable Machine and Barcode Scanner
![Platform Logo](./assets/images/light.png)

You can download the app on the [Release page(https://github.com/phuchoang2603/techburst-counterfeit/releases)]

## Project Description

The Counterfeit Product Detection project aims to provide users with a reliable solution to identify counterfeit products. Originally designed as a C2C Ecommerce Platform, the project has evolved to focus solely on counterfeit detection. The system offers two methods for users to verify product authenticity: utilizing a Teachable Machine model and employing a barcode scanner.

The Teachable Machine model was previously used to detect counterfeit products; however, it had limitations in terms of accuracy and scalability. The model couldn't achieve 100% recognition due to the challenges of pinpointing falsified information, and its scalability was hindered by the availability of limited data resources. In response, the project has undergone optimization to enhance user experience and detection accuracy.

## Detection Methods

### 1. Teachable Machine Model
- github repo: https://github.com/phuchoang2603/teachable-machine-flask-API-server
The Teachable Machine model, while effective, faced challenges in recognizing all counterfeit products due to inherent limitations in machine learning's ability to identify specific areas of manipulation. To optimize this, the project has shifted towards empowering users with the knowledge to identify counterfeit products themselves. Instead of relying solely on the machine learning model, users are guided through a process to manually inspect and verify products using provided instructions.

### 2. Barcode Scanner with PyZbar 
- github repo: https://github.com/phuchoang2603/ocr-langchain
To provide users with an efficient and reliable means of counterfeit detection, the project has integrated the PyZbar library for barcode scanning. Users can now scan the barcode or product number using their smartphone's camera. The scanned data is then processed to extract product information.

## Optimization Strategies

To address the limitations of the Teachable Machine model, the project now facilitates user interaction and education. The optimization strategies include:

- **Empowering Users**: Users are provided with detailed instructions on how to physically inspect products to determine authenticity. This approach leverages human expertise and ensures accurate detection.

- **Barcode Scanning**: The integration of PyZbar allows users to quickly gather product information from barcodes. This data is used to retrieve relevant information about the product's authenticity.

- **Intelligent Information Retrieval**: The scanned barcode or product number is utilized to perform intelligent web searches using a language model (e.g., ChatGPT). The model identifies reputable sources based on factors like view count and credibility.

- **Summarization**: Information from online sources is summarized to provide users with concise and relevant details about the product's authenticity.

## Technologies Used

- **Teachable Machine**: The initial machine learning model used for counterfeit detection.

- **PyZbar**: A Python library for barcode scanning.

- **ChatGPT (Language Model)**: Utilized for intelligent information retrieval and summarization from online sources.

## Future Enhancements

While the project has undergone significant optimization, there are still opportunities for further development:

- **Continuous Learning**: Implement a feedback mechanism that allows users to contribute to the system's learning process.

- **Expanded Barcode Database**: Enrich the barcode database to cover a wider range of products for more accurate detection.

- **Real-time Collaboration**: Enable users to collaborate in real time, sharing insights and assisting each other in product verification.

- **Enhanced User Guidance**: Further improve the guidance provided to users for accurate and efficient manual verification.

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Firestore Documentation](https://firebase.google.com/docs/firestore)
- [imgBB Documentation](https://api.imgbb.com/)
- [Flask Documentation](https://flask.palletsprojects.com/)
- [Teachable Machine](https://teachablemachine.withgoogle.com/)
- [PyZbar Documentation](https://github.com/NaturalHistoryMuseum/pyzbar)
- [OpenAI's ChatGPT](https://platform.openai.com/docs/guides/chat)

For more information and support, refer to the documentation provided for each technology.