# ODC-Workshop-flutter-application
 # Student Mate App

The Student Mate App is a mobile application developed using Dart and Flutter, aimed at helping students efficiently manage their lectures, sections, and exams. It provides a user-friendly interface for organizing academic responsibilities and staying on top of important dates and schedules.

## Features

- **Lecture Management**: Users can view their lectures, including details such as lecture name, time, location, and instructor information.

- **Section Tracking**: The app allows students to keep track of their sections, including section numbers, meeting times, and locations.

- **Exam Time**: Students can see calender for upcoming exams, ensuring they stay prepared and never miss an important test.

- **Local Database**: User data is stored locally using SQLite, ensuring data privacy and allowing for offline access to saved information.

- **REST API Integration**: The app utilizes REST API, implemented through the Dio library, to fetch external data such as lecture schedules and exam dates.

- **State Management**: The Bloc state management technique is employed to efficiently manage and update the application's state, ensuring smooth data flow and responsiveness.

- **MVVM Architecture**: The app follows the Model-View-ViewModel (MVVM) pattern, promoting separation of concerns and facilitating easier maintenance and testing.

## Getting Started

To run the Student Mate App locally, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/youssefeid019/student-mate-app.git
   ```

2. Navigate to the project directory:

   ```
   cd student-mate-app
   ```

3. Install the dependencies:

   ```
   flutter pub get
   ```

4. Run the app:

   ```
   flutter run
   ```

Please ensure you have Flutter and Dart SDK installed on your machine before proceeding.

## Contributing

Contributions to the Student Mate App are welcome! If you encounter any bugs, have suggestions for new features, or would like to contribute code, please feel free to open an issue or submit a pull request. We appreciate any contributions that can improve the app for the benefit of students.

When contributing, please ensure that you follow the existing code style and guidelines. Additionally, provide clear and concise descriptions of your changes or additions to help with the review process.

## Acknowledgements

We would like to express our gratitude to the Flutter community and the developers of the libraries used in this app. Their contributions and efforts have been instrumental in creating a robust and feature-rich application for students.

