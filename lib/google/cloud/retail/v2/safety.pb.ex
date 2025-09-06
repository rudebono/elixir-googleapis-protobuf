defmodule Google.Cloud.Retail.V2.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_HATE_SPEECH, 1
  field :HARM_CATEGORY_DANGEROUS_CONTENT, 2
  field :HARM_CATEGORY_HARASSMENT, 3
  field :HARM_CATEGORY_SEXUALLY_EXPLICIT, 4
  field :HARM_CATEGORY_CIVIC_INTEGRITY, 5
end

defmodule Google.Cloud.Retail.V2.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
  field :BLOCK_NONE, 4
  field :OFF, 5
end

defmodule Google.Cloud.Retail.V2.SafetySetting.HarmBlockMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_BLOCK_METHOD_UNSPECIFIED, 0
  field :SEVERITY, 1
  field :PROBABILITY, 2
end

defmodule Google.Cloud.Retail.V2.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 1, type: Google.Cloud.Retail.V2.HarmCategory, enum: true
  field :threshold, 2, type: Google.Cloud.Retail.V2.SafetySetting.HarmBlockThreshold, enum: true

  field :method, 3,
    type: Google.Cloud.Retail.V2.SafetySetting.HarmBlockMethod,
    enum: true,
    deprecated: false
end
