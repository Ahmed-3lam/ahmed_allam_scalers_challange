# scalers_challange

Project Overview
This Flutter application is a job listing app that allows users to view a list of available jobs and access detailed information about a selected job. The app has been built following Clean Architecture principles, ensuring scalability, maintainability, and separation of concerns. The state management is handled using the Bloc package. The app consists of two primary screens: Jobs List and Job Details, with full design compliance based on the provided Figma design.

Application Structure (Clean Architecture)
The app is divided into the following layers, adhering to Clean Architecture principles:

Presentation Layer: Contains UI code (Widgets) and Bloc logic for state management.
Domain Layer: Defines the business logic, including use cases and entities.
Data Layer: Responsible for handling data sources, such as fetching job data from APIs.
Features
Jobs List Screen:

Fetches and displays a list of jobs from an API.
Job Details Screen:

Displays detailed information about a selected job, including job title, description, and company details.
Uses the Job Details API to fetch job-specific data.
API Endpoints
Jobs List: Fetches the list of jobs.
GET https://mpa0771a40ef48fcdfb7.free.beeceptor.com/jobs
Job Details: Fetches details for a specific job by UUID.
GET https://mpa0771a40ef48fcdfb7.free.beeceptor.com/jobs/{jobUUID}
Dependencies
Bloc: For state management.
Dio: To handle API requests.
get_it & injectable: to use dependancy injection
Folder Structure
lib/
├── core/                  # Core utilities and configurations (e.g., constants, error handling)
├── data/                  # Data layer, including models, API services, and repositories
│   ├── models/            # Models representing API responses (Job, JobDetails, etc.)
│   └── repositories/      # Repositories that abstract API calls
├── domain/                # Domain layer with business logic, use cases, and entities
│   └── usecases/          # Use cases (e.g., fetching jobs, fetching job details)
├── presentation/          # Presentation layer, including UI, Widgets, and Blocs
│   ├── bloc/              # Bloc logic for Jobs and JobDetails
│   └── screens/           # Jobs List and Job Details screens
└── main.dart              # Application entry point
How to Run the App
Clone the repository:


git clone https://github.com/your-repo/job-listing-app.git
Install dependencies: Navigate to the project root and run:


flutter pub get
Run the application:


flutter run
Run tests: To run widget tests:



Clean Architecture: This architecture was chosen to keep the app scalable and maintainable by clearly separating the app into layers: Data, Domain, and Presentation.

