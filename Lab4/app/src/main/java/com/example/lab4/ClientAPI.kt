package com.example.lab4

import retrofit2.Response
import retrofit2.http.GET

interface ClientAPI {
    @GET("/v3/covid-19/all")
    suspend fun getData(): Response<CovidInfo>
}