defmodule Google.Ads.Googleads.V8.Enums.VanityPharmaTextEnum.VanityPharmaText do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PRESCRIPTION_TREATMENT_WEBSITE_EN
          | :PRESCRIPTION_TREATMENT_WEBSITE_ES
          | :PRESCRIPTION_DEVICE_WEBSITE_EN
          | :PRESCRIPTION_DEVICE_WEBSITE_ES
          | :MEDICAL_DEVICE_WEBSITE_EN
          | :MEDICAL_DEVICE_WEBSITE_ES
          | :PREVENTATIVE_TREATMENT_WEBSITE_EN
          | :PREVENTATIVE_TREATMENT_WEBSITE_ES
          | :PRESCRIPTION_CONTRACEPTION_WEBSITE_EN
          | :PRESCRIPTION_CONTRACEPTION_WEBSITE_ES
          | :PRESCRIPTION_VACCINE_WEBSITE_EN
          | :PRESCRIPTION_VACCINE_WEBSITE_ES

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PRESCRIPTION_TREATMENT_WEBSITE_EN, 2
  field :PRESCRIPTION_TREATMENT_WEBSITE_ES, 3
  field :PRESCRIPTION_DEVICE_WEBSITE_EN, 4
  field :PRESCRIPTION_DEVICE_WEBSITE_ES, 5
  field :MEDICAL_DEVICE_WEBSITE_EN, 6
  field :MEDICAL_DEVICE_WEBSITE_ES, 7
  field :PREVENTATIVE_TREATMENT_WEBSITE_EN, 8
  field :PREVENTATIVE_TREATMENT_WEBSITE_ES, 9
  field :PRESCRIPTION_CONTRACEPTION_WEBSITE_EN, 10
  field :PRESCRIPTION_CONTRACEPTION_WEBSITE_ES, 11
  field :PRESCRIPTION_VACCINE_WEBSITE_EN, 12
  field :PRESCRIPTION_VACCINE_WEBSITE_ES, 13
end

defmodule Google.Ads.Googleads.V8.Enums.VanityPharmaTextEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
