# week02_scientific_basics
First project using ``fpm`` to create the application structure.

This is a simple application that takes a single user input as a real float,
computs the square of the input, and prints the square of the input to the terminal.

## Directory Structure
```text
week02_scientific_basics/
├── fpm.toml                    # fpm project configuration
├── app/
│   └── main.f90                # application entry point
├── src/
│   └── scientific_basics.f90   # reusable modules/library code
├── test/
│   └── check.f90               # unit/integration tests
└── README.md
```

## App Build Instructions

From the project root (`week02_scientific_basics/`):

1. Build the application:
   ```bash
   fpm build
   ```

2. Run the application:
   ```bash
   fpm run
   ```

3. Build optimized (release) binary:
   ```bash
   fpm build --profile release
   ```

4. Run tests:
   ```bash
   fpm test
   ```

5. Clean build artifacts:
   ```bash
   fpm clean
   ```

> If `fpm` is not installed on macOS:
> ```bash
> brew install fpm
> ```

<!-- ...existing code... -->