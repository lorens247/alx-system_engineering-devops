# 0x16. API advanced

### 1. How to read API documentation to find the endpoints you’re looking for:

- **Authentication:** Check if the API requires authentication and what type (e.g., API key, OAuth token).
- **Base URL:** Find the base URL for all endpoints. Usually, it's provided in the documentation.
- **Endpoints:** Look for a list of available endpoints, along with their descriptions and required parameters.
- **HTTP Methods:** Determine which HTTP methods (GET, POST, PUT, DELETE, etc.) are allowed for each endpoint.
- **Parameters:** Identify the required and optional parameters for each endpoint, along with their data types.
- **Response Format:** Understand the format of the response data (usually JSON or XML) and the structure of the response object.
- **Error Handling:** Learn about possible error codes and error response formats.

### 2. How to use an API with pagination:

- APIs often implement pagination using query parameters like `page` and `limit`.
- For each request, specify the page number and the number of items per page (limit).
- Process the current page of data and check if there are more pages (usually indicated in the response metadata).
- Repeat the request for the next page until all data is retrieved.

### 3. How to parse JSON results from an API:

- Use programming language-specific libraries (e.g., `json` module in Python) to parse JSON data.
- Deserialize the JSON string into a data structure (e.g., dictionary, array) in your programming language.

### 4. How to make a recursive API call:

- Define a function that makes the API call with the necessary parameters.
- Process the response data as needed.
- If there are more pages (pagination), call the function recursively with updated parameters (e.g., next page number).
- Use a condition to stop the recursion, such as reaching the last page or a specific condition met.

### 5. How to sort a dictionary by value:

```python
# Python example
my_dict = {'a': 3, 'b': 1, 'c': 2}
sorted_dict = dict(sorted(my_dict.items(), key=lambda item: item[1]))
# sorted_dict is now {'b': 1, 'c': 2, 'a': 3}
```

Remember that each API might have unique requirements and methods, so always refer to the specific API documentation for accurate and detailed information.
