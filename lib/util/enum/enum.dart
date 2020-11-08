/// screen which should be displayed in profile screen
enum ProfileScreenType { registration, login, profile }

/// auth screen identification
enum AuthScreenType {registration, login,}

/// error response state
enum ErrorResponceStatus { display, dismiss }

/// progress indicator state
enum ProgressIndicaterStatus { display, dismiss }

/// network response for screen display data
enum NetWorkResponseStatus {
  ResponseData,
  ResponseError,
  ResponseEmpty,
  NetworkError
}


