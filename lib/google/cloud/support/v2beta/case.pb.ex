defmodule Google.Cloud.Support.V2beta.ProductLine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PRODUCT_LINE_UNSPECIFIED, 0
  field :GOOGLE_CLOUD, 1
  field :GOOGLE_MAPS, 2
end

defmodule Google.Cloud.Support.V2beta.Case.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NEW, 1
  field :IN_PROGRESS_GOOGLE_SUPPORT, 2
  field :ACTION_REQUIRED, 3
  field :SOLUTION_PROVIDED, 4
  field :CLOSED, 5
end

defmodule Google.Cloud.Support.V2beta.Case.Priority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :P0, 1
  field :P1, 2
  field :P2, 3
  field :P3, 4
  field :P4, 5
end

defmodule Google.Cloud.Support.V2beta.Case do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :classification, 4, type: Google.Cloud.Support.V2beta.CaseClassification
  field :time_zone, 8, type: :string, json_name: "timeZone"

  field :subscriber_email_addresses, 9,
    repeated: true,
    type: :string,
    json_name: "subscriberEmailAddresses"

  field :state, 12, type: Google.Cloud.Support.V2beta.Case.State, enum: true, deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :creator, 15, type: Google.Cloud.Support.V2beta.Actor
  field :contact_email, 35, type: :string, json_name: "contactEmail"
  field :escalated, 17, type: :bool
  field :test_case, 19, type: :bool, json_name: "testCase"
  field :language_code, 23, type: :string, json_name: "languageCode"
  field :priority, 32, type: Google.Cloud.Support.V2beta.Case.Priority, enum: true
end

defmodule Google.Cloud.Support.V2beta.CaseClassification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
  field :product, 10, type: Google.Cloud.Support.V2beta.Product
end

defmodule Google.Cloud.Support.V2beta.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_line, 1,
    type: Google.Cloud.Support.V2beta.ProductLine,
    json_name: "productLine",
    enum: true
end
