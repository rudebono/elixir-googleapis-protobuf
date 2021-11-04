defmodule Grafeas.V1.UpgradeNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package: String.t(),
          version: Grafeas.V1.Version.t() | nil,
          distributions: [Grafeas.V1.UpgradeDistribution.t()],
          windows_update: Grafeas.V1.WindowsUpdate.t() | nil
        }

  defstruct [:package, :version, :distributions, :windows_update]

  field :package, 1, type: :string
  field :version, 2, type: Grafeas.V1.Version
  field :distributions, 3, repeated: true, type: Grafeas.V1.UpgradeDistribution
  field :windows_update, 4, type: Grafeas.V1.WindowsUpdate, json_name: "windowsUpdate"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.UpgradeDistribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          classification: String.t(),
          severity: String.t(),
          cve: [String.t()]
        }

  defstruct [:cpe_uri, :classification, :severity, :cve]

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :classification, 2, type: :string
  field :severity, 3, type: :string
  field :cve, 4, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.WindowsUpdate.Identity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_id: String.t(),
          revision: integer
        }

  defstruct [:update_id, :revision]

  field :update_id, 1, type: :string, json_name: "updateId"
  field :revision, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Grafeas.V1.WindowsUpdate.Category do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category_id: String.t(),
          name: String.t()
        }

  defstruct [:category_id, :name]

  field :category_id, 1, type: :string, json_name: "categoryId"
  field :name, 2, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.WindowsUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: Grafeas.V1.WindowsUpdate.Identity.t() | nil,
          title: String.t(),
          description: String.t(),
          categories: [Grafeas.V1.WindowsUpdate.Category.t()],
          kb_article_ids: [String.t()],
          support_url: String.t(),
          last_published_timestamp: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :identity,
    :title,
    :description,
    :categories,
    :kb_article_ids,
    :support_url,
    :last_published_timestamp
  ]

  field :identity, 1, type: Grafeas.V1.WindowsUpdate.Identity
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :categories, 4, repeated: true, type: Grafeas.V1.WindowsUpdate.Category
  field :kb_article_ids, 5, repeated: true, type: :string, json_name: "kbArticleIds"
  field :support_url, 6, type: :string, json_name: "supportUrl"

  field :last_published_timestamp, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "lastPublishedTimestamp"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.UpgradeOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package: String.t(),
          parsed_version: Grafeas.V1.Version.t() | nil,
          distribution: Grafeas.V1.UpgradeDistribution.t() | nil,
          windows_update: Grafeas.V1.WindowsUpdate.t() | nil
        }

  defstruct [:package, :parsed_version, :distribution, :windows_update]

  field :package, 1, type: :string
  field :parsed_version, 3, type: Grafeas.V1.Version, json_name: "parsedVersion"
  field :distribution, 4, type: Grafeas.V1.UpgradeDistribution
  field :windows_update, 5, type: Grafeas.V1.WindowsUpdate, json_name: "windowsUpdate"

  def transform_module(), do: nil
end
