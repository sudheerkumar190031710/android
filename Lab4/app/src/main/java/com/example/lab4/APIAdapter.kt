package com.example.lab4
import okhttp3.OkHttpClient
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

object APIAdapter {
    val apiClient:ClientAPI= Retrofit.Builder()
        .baseUrl("https://disease.sh")
        .client(OkHttpClient())
        .addConverterFactory(GsonConverterFactory.create())
        .build()
        .create(ClientAPI::class.java)
}