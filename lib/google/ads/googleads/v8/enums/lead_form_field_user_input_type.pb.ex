defmodule Google.Ads.Googleads.V8.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FULL_NAME
          | :EMAIL
          | :PHONE_NUMBER
          | :POSTAL_CODE
          | :CITY
          | :REGION
          | :COUNTRY
          | :WORK_EMAIL
          | :COMPANY_NAME
          | :WORK_PHONE
          | :JOB_TITLE
          | :FIRST_NAME
          | :LAST_NAME
          | :VEHICLE_MODEL
          | :VEHICLE_TYPE
          | :PREFERRED_DEALERSHIP
          | :VEHICLE_PURCHASE_TIMELINE
          | :VEHICLE_OWNERSHIP
          | :VEHICLE_PAYMENT_TYPE
          | :VEHICLE_CONDITION
          | :COMPANY_SIZE
          | :ANNUAL_SALES
          | :YEARS_IN_BUSINESS
          | :JOB_DEPARTMENT
          | :JOB_ROLE
          | :EDUCATION_PROGRAM
          | :EDUCATION_COURSE
          | :PRODUCT
          | :SERVICE
          | :OFFER
          | :CATEGORY
          | :PREFERRED_CONTACT_METHOD
          | :PREFERRED_LOCATION
          | :PREFERRED_CONTACT_TIME
          | :PURCHASE_TIMELINE
          | :YEARS_OF_EXPERIENCE
          | :JOB_INDUSTRY
          | :LEVEL_OF_EDUCATION
          | :PROPERTY_TYPE
          | :REALTOR_HELP_GOAL
          | :PROPERTY_COMMUNITY
          | :PRICE_RANGE
          | :NUMBER_OF_BEDROOMS
          | :FURNISHED_PROPERTY
          | :PETS_ALLOWED_PROPERTY
          | :NEXT_PLANNED_PURCHASE
          | :EVENT_SIGNUP_INTEREST
          | :PREFERRED_SHOPPING_PLACES
          | :FAVORITE_BRAND
          | :TRANSPORTATION_COMMERCIAL_LICENSE_TYPE
          | :EVENT_BOOKING_INTEREST
          | :DESTINATION_COUNTRY
          | :DESTINATION_CITY
          | :DEPARTURE_COUNTRY
          | :DEPARTURE_CITY
          | :DEPARTURE_DATE
          | :RETURN_DATE
          | :NUMBER_OF_TRAVELERS
          | :TRAVEL_BUDGET
          | :TRAVEL_ACCOMMODATION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FULL_NAME, 2
  field :EMAIL, 3
  field :PHONE_NUMBER, 4
  field :POSTAL_CODE, 5
  field :CITY, 9
  field :REGION, 10
  field :COUNTRY, 11
  field :WORK_EMAIL, 12
  field :COMPANY_NAME, 13
  field :WORK_PHONE, 14
  field :JOB_TITLE, 15
  field :FIRST_NAME, 23
  field :LAST_NAME, 24
  field :VEHICLE_MODEL, 1001
  field :VEHICLE_TYPE, 1002
  field :PREFERRED_DEALERSHIP, 1003
  field :VEHICLE_PURCHASE_TIMELINE, 1004
  field :VEHICLE_OWNERSHIP, 1005
  field :VEHICLE_PAYMENT_TYPE, 1009
  field :VEHICLE_CONDITION, 1010
  field :COMPANY_SIZE, 1006
  field :ANNUAL_SALES, 1007
  field :YEARS_IN_BUSINESS, 1008
  field :JOB_DEPARTMENT, 1011
  field :JOB_ROLE, 1012
  field :EDUCATION_PROGRAM, 1013
  field :EDUCATION_COURSE, 1014
  field :PRODUCT, 1016
  field :SERVICE, 1017
  field :OFFER, 1018
  field :CATEGORY, 1019
  field :PREFERRED_CONTACT_METHOD, 1020
  field :PREFERRED_LOCATION, 1021
  field :PREFERRED_CONTACT_TIME, 1022
  field :PURCHASE_TIMELINE, 1023
  field :YEARS_OF_EXPERIENCE, 1048
  field :JOB_INDUSTRY, 1049
  field :LEVEL_OF_EDUCATION, 1050
  field :PROPERTY_TYPE, 1024
  field :REALTOR_HELP_GOAL, 1025
  field :PROPERTY_COMMUNITY, 1026
  field :PRICE_RANGE, 1027
  field :NUMBER_OF_BEDROOMS, 1028
  field :FURNISHED_PROPERTY, 1029
  field :PETS_ALLOWED_PROPERTY, 1030
  field :NEXT_PLANNED_PURCHASE, 1031
  field :EVENT_SIGNUP_INTEREST, 1033
  field :PREFERRED_SHOPPING_PLACES, 1034
  field :FAVORITE_BRAND, 1035
  field :TRANSPORTATION_COMMERCIAL_LICENSE_TYPE, 1036
  field :EVENT_BOOKING_INTEREST, 1038
  field :DESTINATION_COUNTRY, 1039
  field :DESTINATION_CITY, 1040
  field :DEPARTURE_COUNTRY, 1041
  field :DEPARTURE_CITY, 1042
  field :DEPARTURE_DATE, 1043
  field :RETURN_DATE, 1044
  field :NUMBER_OF_TRAVELERS, 1045
  field :TRAVEL_BUDGET, 1046
  field :TRAVEL_ACCOMMODATION, 1047
end

defmodule Google.Ads.Googleads.V8.Enums.LeadFormFieldUserInputTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
