defmodule Google.Cloud.Websecurityscanner.V1beta.Form do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :action_uri, 1, type: :string, json_name: "actionUri"
  field :fields, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.OutdatedLibrary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :library_name, 1, type: :string, json_name: "libraryName"
  field :version, 2, type: :string
  field :learn_more_urls, 3, repeated: true, type: :string, json_name: "learnMoreUrls"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ViolatingResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content_type, 1, type: :string, json_name: "contentType"
  field :resource_url, 2, type: :string, json_name: "resourceUrl"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.VulnerableParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parameter_names, 1, repeated: true, type: :string, json_name: "parameterNames"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders.Header

  field :missing_headers, 2,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.VulnerableHeaders.Header,
    json_name: "missingHeaders"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.Xss do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :stack_traces, 1, repeated: true, type: :string, json_name: "stackTraces"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end
