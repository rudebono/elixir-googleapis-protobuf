defmodule Google.Cloud.Dataproc.V1.Component do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPONENT_UNSPECIFIED
          | :ANACONDA
          | :DOCKER
          | :DRUID
          | :FLINK
          | :HBASE
          | :HIVE_WEBHCAT
          | :JUPYTER
          | :PRESTO
          | :RANGER
          | :SOLR
          | :ZEPPELIN
          | :ZOOKEEPER

  field :COMPONENT_UNSPECIFIED, 0

  field :ANACONDA, 5

  field :DOCKER, 13

  field :DRUID, 9

  field :FLINK, 14

  field :HBASE, 11

  field :HIVE_WEBHCAT, 3

  field :JUPYTER, 1

  field :PRESTO, 6

  field :RANGER, 12

  field :SOLR, 10

  field :ZEPPELIN, 4

  field :ZOOKEEPER, 8
end
