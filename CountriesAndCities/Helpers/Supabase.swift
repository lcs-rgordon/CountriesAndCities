//
//  Supabase.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://oqymmeofgjpvbhnbvbnx.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xeW1tZW9mZ2pwdmJobmJ2Ym54Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4NjI5MDQsImV4cCI6MjAzMzQzODkwNH0.RcCbED3L_rorU9eqnpyxUsVjTG4h0YrcD8pMxTblJxU"
)
