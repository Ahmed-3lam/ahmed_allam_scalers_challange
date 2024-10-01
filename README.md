

# Job Listings App

## Overview

This Flutter application is a job listing app that allows users to view a list of available jobs and access detailed information about a selected job. The app is built using **Clean Architecture** principles to ensure scalability and maintainability. State management is handled using **Bloc**, and the app consists of two main screens: **Jobs List** and **Job Details**.

You can find the design specifications in the [Figma link](https://www.figma.com/design/CDzMnLq7clinBPoPDk2qWk/Scalers---Challange?node-id=0-1&t=OeWbBTunIJ1qD4L2-1).

## Features

1. **Jobs List Screen**:
    - Fetches and displays a list of jobs from the API.


2. **Job Details Screen**:
    - Displays detailed information about a selected job, including job title, description, and company details.
    - Fetches job-specific data from the Job Details API.

## API Endpoints

- **Jobs List**: Fetches the list of jobs.
    - `GET https://mpa0771a40ef48fcdfb7.free.beeceptor.com/jobs`
  
- **Job Details**: Fetches details for a specific job by UUID.
    - `GET https://mpa0771a40ef48fcdfb7.free.beeceptor.com/jobs/{jobUUID}`

## Technology Stack

- **Flutter SDK**
- **Bloc**: For state management.
- **Dio**: For making API requests.
- **Get it**: For DI.

## Folder Structure

The project follows Clean Architecture, dividing the code into layers for better maintainability and separation of concerns.

```
lib/
├── core/                  # Core utilities and configurations (e.g., constants, error handling)
├── data/                  # Data layer, including models, API services, and repositories
│   ├── models/            # Models representing API responses (Job, JobDetails, etc.)
│   ├── data_source/       # DataSource to get all models from API calls
│   └── repo/              # Repositories that abstract API calls
├── domain/                # Domain layer with business logic, use cases, and entities
│   └── usecases/          # Use cases (e.g., fetching jobs, fetching job details)
│   └── repo/              # Abstract Repo
├── presentation/          # Presentation layer, including UI, Widgets, and Blocs
│   ├── bloc/              # Bloc logic for Jobs and JobDetails
│   └── screens/           # Jobs List and Job Details screens
└── main.dart              # Application entry point
```

## How to Run the App

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Ahmed-3lam/ahmed_allam_scalers_challange.git
   ```

2. **Install dependencies**:
   Navigate to the project root and run:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```



## Code Design Choices

- **Bloc for State Management**: The app uses Bloc to manage different states, such as loading, success, and error, ensuring a clear separation between business logic and UI.
  
- **Clean Architecture**: This architecture was chosen to maintain separation of concerns and make the app scalable. The app is divided into three layers: Data, Domain, and Presentation.




