defmodule Google.Cloud.Websecurityscanner.V1.Xss.AttackVector do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ATTACK_VECTOR_UNSPECIFIED, 0
  field :LOCAL_STORAGE, 1
  field :SESSION_STORAGE, 2
  field :WINDOW_NAME, 3
  field :REFERRER, 4
  field :FORM_INPUT, 5
  field :COOKIE, 6
  field :POST_MESSAGE, 7
  field :GET_PARAMETERS, 8
  field :URL_FRAGMENT, 9
  field :HTML_COMMENT, 10
  field :POST_PARAMETERS, 11
  field :PROTOCOL, 12
  field :STORED_XSS, 13
  field :SAME_ORIGIN, 14
  field :USER_CONTROLLABLE_URL, 15
end

defmodule Google.Cloud.Websecurityscanner.V1.Xxe.Location do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_UNSPECIFIED, 0
  field :COMPLETE_REQUEST_BODY, 1
end

defmodule Google.Cloud.Websecurityscanner.V1.Form do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_uri, 1, type: :string, json_name: "actionUri"
  field :fields, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.OutdatedLibrary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :library_name, 1, type: :string, json_name: "libraryName"
  field :version, 2, type: :string
  field :learn_more_urls, 3, repeated: true, type: :string, json_name: "learnMoreUrls"
end

defmodule Google.Cloud.Websecurityscanner.V1.ViolatingResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content_type, 1, type: :string, json_name: "contentType"
  field :resource_url, 2, type: :string, json_name: "resourceUrl"
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parameter_names, 1, repeated: true, type: :string, json_name: "parameterNames"
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableHeaders do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header

  field :missing_headers, 2,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header,
    json_name: "missingHeaders"
end

defmodule Google.Cloud.Websecurityscanner.V1.Xss do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stack_traces, 1, repeated: true, type: :string, json_name: "stackTraces"
  field :error_message, 2, type: :string, json_name: "errorMessage"

  field :attack_vector, 3,
    type: Google.Cloud.Websecurityscanner.V1.Xss.AttackVector,
    json_name: "attackVector",
    enum: true

  field :stored_xss_seeding_url, 4, type: :string, json_name: "storedXssSeedingUrl"
end

defmodule Google.Cloud.Websecurityscanner.V1.Xxe do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :payload_value, 1, type: :string, json_name: "payloadValue"

  field :payload_location, 2,
    type: Google.Cloud.Websecurityscanner.V1.Xxe.Location,
    json_name: "payloadLocation",
    enum: true
end
