defmodule Grafeas.V1.UpgradeNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :package, 1, type: :string
  field :version, 2, type: Grafeas.V1.Version
  field :distributions, 3, repeated: true, type: Grafeas.V1.UpgradeDistribution
  field :windows_update, 4, type: Grafeas.V1.WindowsUpdate, json_name: "windowsUpdate"
end

defmodule Grafeas.V1.UpgradeDistribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :classification, 2, type: :string
  field :severity, 3, type: :string
  field :cve, 4, repeated: true, type: :string
end

defmodule Grafeas.V1.WindowsUpdate.Identity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_id, 1, type: :string, json_name: "updateId"
  field :revision, 2, type: :int32
end

defmodule Grafeas.V1.WindowsUpdate.Category do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category_id, 1, type: :string, json_name: "categoryId"
  field :name, 2, type: :string
end

defmodule Grafeas.V1.WindowsUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity, 1, type: Grafeas.V1.WindowsUpdate.Identity
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :categories, 4, repeated: true, type: Grafeas.V1.WindowsUpdate.Category
  field :kb_article_ids, 5, repeated: true, type: :string, json_name: "kbArticleIds"
  field :support_url, 6, type: :string, json_name: "supportUrl"

  field :last_published_timestamp, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "lastPublishedTimestamp"
end

defmodule Grafeas.V1.UpgradeOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :package, 1, type: :string
  field :parsed_version, 3, type: Grafeas.V1.Version, json_name: "parsedVersion"
  field :distribution, 4, type: Grafeas.V1.UpgradeDistribution
  field :windows_update, 5, type: Grafeas.V1.WindowsUpdate, json_name: "windowsUpdate"
end
