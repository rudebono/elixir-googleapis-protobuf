defmodule Google.Ads.Googleads.V9.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :HTML5_UPLOAD_AD
          | :DYNAMIC_HTML5_EDUCATION_AD
          | :DYNAMIC_HTML5_FLIGHT_AD
          | :DYNAMIC_HTML5_HOTEL_RENTAL_AD
          | :DYNAMIC_HTML5_JOB_AD
          | :DYNAMIC_HTML5_LOCAL_AD
          | :DYNAMIC_HTML5_REAL_ESTATE_AD
          | :DYNAMIC_HTML5_CUSTOM_AD
          | :DYNAMIC_HTML5_TRAVEL_AD
          | :DYNAMIC_HTML5_HOTEL_AD

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HTML5_UPLOAD_AD, 2
  field :DYNAMIC_HTML5_EDUCATION_AD, 3
  field :DYNAMIC_HTML5_FLIGHT_AD, 4
  field :DYNAMIC_HTML5_HOTEL_RENTAL_AD, 5
  field :DYNAMIC_HTML5_JOB_AD, 6
  field :DYNAMIC_HTML5_LOCAL_AD, 7
  field :DYNAMIC_HTML5_REAL_ESTATE_AD, 8
  field :DYNAMIC_HTML5_CUSTOM_AD, 9
  field :DYNAMIC_HTML5_TRAVEL_AD, 10
  field :DYNAMIC_HTML5_HOTEL_AD, 11
end

defmodule Google.Ads.Googleads.V9.Enums.DisplayUploadProductTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
