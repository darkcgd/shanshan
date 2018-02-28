package com.shanshan.chatapi;

public interface AuthTokenApi {
	/**
	 * Request an Authentication Token
	 * @return String
	 * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
	 */
     Object getAuthToken ();
}
