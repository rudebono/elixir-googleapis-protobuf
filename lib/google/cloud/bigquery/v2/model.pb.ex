defmodule Google.Cloud.Bigquery.V2.Model.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :LINEAR_REGRESSION
          | :LOGISTIC_REGRESSION
          | :KMEANS
          | :MATRIX_FACTORIZATION
          | :DNN_CLASSIFIER
          | :TENSORFLOW
          | :DNN_REGRESSOR
          | :BOOSTED_TREE_REGRESSOR
          | :BOOSTED_TREE_CLASSIFIER
          | :ARIMA
          | :AUTOML_REGRESSOR
          | :AUTOML_CLASSIFIER

  field :MODEL_TYPE_UNSPECIFIED, 0

  field :LINEAR_REGRESSION, 1

  field :LOGISTIC_REGRESSION, 2

  field :KMEANS, 3

  field :MATRIX_FACTORIZATION, 4

  field :DNN_CLASSIFIER, 5

  field :TENSORFLOW, 6

  field :DNN_REGRESSOR, 7

  field :BOOSTED_TREE_REGRESSOR, 9

  field :BOOSTED_TREE_CLASSIFIER, 10

  field :ARIMA, 11

  field :AUTOML_REGRESSOR, 12

  field :AUTOML_CLASSIFIER, 13
end

defmodule Google.Cloud.Bigquery.V2.Model.LossType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LOSS_TYPE_UNSPECIFIED | :MEAN_SQUARED_LOSS | :MEAN_LOG_LOSS

  field :LOSS_TYPE_UNSPECIFIED, 0

  field :MEAN_SQUARED_LOSS, 1

  field :MEAN_LOG_LOSS, 2
end

defmodule Google.Cloud.Bigquery.V2.Model.DistanceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DISTANCE_TYPE_UNSPECIFIED | :EUCLIDEAN | :COSINE

  field :DISTANCE_TYPE_UNSPECIFIED, 0

  field :EUCLIDEAN, 1

  field :COSINE, 2
end

defmodule Google.Cloud.Bigquery.V2.Model.DataSplitMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DATA_SPLIT_METHOD_UNSPECIFIED
          | :RANDOM
          | :CUSTOM
          | :SEQUENTIAL
          | :NO_SPLIT
          | :AUTO_SPLIT

  field :DATA_SPLIT_METHOD_UNSPECIFIED, 0

  field :RANDOM, 1

  field :CUSTOM, 2

  field :SEQUENTIAL, 3

  field :NO_SPLIT, 4

  field :AUTO_SPLIT, 5
end

defmodule Google.Cloud.Bigquery.V2.Model.DataFrequency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DATA_FREQUENCY_UNSPECIFIED
          | :AUTO_FREQUENCY
          | :YEARLY
          | :QUARTERLY
          | :MONTHLY
          | :WEEKLY
          | :DAILY
          | :HOURLY

  field :DATA_FREQUENCY_UNSPECIFIED, 0

  field :AUTO_FREQUENCY, 1

  field :YEARLY, 2

  field :QUARTERLY, 3

  field :MONTHLY, 4

  field :WEEKLY, 5

  field :DAILY, 6

  field :HOURLY, 7
end

defmodule Google.Cloud.Bigquery.V2.Model.HolidayRegion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HOLIDAY_REGION_UNSPECIFIED
          | :GLOBAL
          | :NA
          | :JAPAC
          | :EMEA
          | :LAC
          | :AE
          | :AR
          | :AT
          | :AU
          | :BE
          | :BR
          | :CA
          | :CH
          | :CL
          | :CN
          | :CO
          | :CS
          | :CZ
          | :DE
          | :DK
          | :DZ
          | :EC
          | :EE
          | :EG
          | :ES
          | :FI
          | :FR
          | :GB
          | :GR
          | :HK
          | :HU
          | :ID
          | :IE
          | :IL
          | :IN
          | :IR
          | :IT
          | :JP
          | :KR
          | :LV
          | :MA
          | :MX
          | :MY
          | :NG
          | :NL
          | :NO
          | :NZ
          | :PE
          | :PH
          | :PK
          | :PL
          | :PT
          | :RO
          | :RS
          | :RU
          | :SA
          | :SE
          | :SG
          | :SI
          | :SK
          | :TH
          | :TR
          | :TW
          | :UA
          | :US
          | :VE
          | :VN
          | :ZA

  field :HOLIDAY_REGION_UNSPECIFIED, 0

  field :GLOBAL, 1

  field :NA, 2

  field :JAPAC, 3

  field :EMEA, 4

  field :LAC, 5

  field :AE, 6

  field :AR, 7

  field :AT, 8

  field :AU, 9

  field :BE, 10

  field :BR, 11

  field :CA, 12

  field :CH, 13

  field :CL, 14

  field :CN, 15

  field :CO, 16

  field :CS, 17

  field :CZ, 18

  field :DE, 19

  field :DK, 20

  field :DZ, 21

  field :EC, 22

  field :EE, 23

  field :EG, 24

  field :ES, 25

  field :FI, 26

  field :FR, 27

  field :GB, 28

  field :GR, 29

  field :HK, 30

  field :HU, 31

  field :ID, 32

  field :IE, 33

  field :IL, 34

  field :IN, 35

  field :IR, 36

  field :IT, 37

  field :JP, 38

  field :KR, 39

  field :LV, 40

  field :MA, 41

  field :MX, 42

  field :MY, 43

  field :NG, 44

  field :NL, 45

  field :NO, 46

  field :NZ, 47

  field :PE, 48

  field :PH, 49

  field :PK, 50

  field :PL, 51

  field :PT, 52

  field :RO, 53

  field :RS, 54

  field :RU, 55

  field :SA, 56

  field :SE, 57

  field :SG, 58

  field :SI, 59

  field :SK, 60

  field :TH, 61

  field :TR, 62

  field :TW, 63

  field :UA, 64

  field :US, 65

  field :VE, 66

  field :VN, 67

  field :ZA, 68
end

defmodule Google.Cloud.Bigquery.V2.Model.LearnRateStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LEARN_RATE_STRATEGY_UNSPECIFIED | :LINE_SEARCH | :CONSTANT

  field :LEARN_RATE_STRATEGY_UNSPECIFIED, 0

  field :LINE_SEARCH, 1

  field :CONSTANT, 2
end

defmodule Google.Cloud.Bigquery.V2.Model.OptimizationStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPTIMIZATION_STRATEGY_UNSPECIFIED
          | :BATCH_GRADIENT_DESCENT
          | :NORMAL_EQUATION

  field :OPTIMIZATION_STRATEGY_UNSPECIFIED, 0

  field :BATCH_GRADIENT_DESCENT, 1

  field :NORMAL_EQUATION, 2
end

defmodule Google.Cloud.Bigquery.V2.Model.FeedbackType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FEEDBACK_TYPE_UNSPECIFIED | :IMPLICIT | :EXPLICIT

  field :FEEDBACK_TYPE_UNSPECIFIED, 0

  field :IMPLICIT, 1

  field :EXPLICIT, 2
end

defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SEASONAL_PERIOD_TYPE_UNSPECIFIED
          | :NO_SEASONALITY
          | :DAILY
          | :WEEKLY
          | :MONTHLY
          | :QUARTERLY
          | :YEARLY

  field :SEASONAL_PERIOD_TYPE_UNSPECIFIED, 0

  field :NO_SEASONALITY, 1

  field :DAILY, 2

  field :WEEKLY, 3

  field :MONTHLY, 4

  field :QUARTERLY, 5

  field :YEARLY, 6
end

defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED
          | :RANDOM
          | :CUSTOM
          | :KMEANS_PLUS_PLUS

  field :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED, 0

  field :RANDOM, 1

  field :CUSTOM, 2

  field :KMEANS_PLUS_PLUS, 3
end

defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Bigquery.V2.Model.RegressionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_absolute_error: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_error: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_log_error: Google.Protobuf.DoubleValue.t() | nil,
          median_absolute_error: Google.Protobuf.DoubleValue.t() | nil,
          r_squared: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [
    :mean_absolute_error,
    :mean_squared_error,
    :mean_squared_log_error,
    :median_absolute_error,
    :r_squared
  ]

  field :mean_absolute_error, 1, type: Google.Protobuf.DoubleValue
  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue
  field :mean_squared_log_error, 3, type: Google.Protobuf.DoubleValue
  field :median_absolute_error, 4, type: Google.Protobuf.DoubleValue
  field :r_squared, 5, type: Google.Protobuf.DoubleValue
end

defmodule Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          precision: Google.Protobuf.DoubleValue.t() | nil,
          recall: Google.Protobuf.DoubleValue.t() | nil,
          accuracy: Google.Protobuf.DoubleValue.t() | nil,
          threshold: Google.Protobuf.DoubleValue.t() | nil,
          f1_score: Google.Protobuf.DoubleValue.t() | nil,
          log_loss: Google.Protobuf.DoubleValue.t() | nil,
          roc_auc: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:precision, :recall, :accuracy, :threshold, :f1_score, :log_loss, :roc_auc]

  field :precision, 1, type: Google.Protobuf.DoubleValue
  field :recall, 2, type: Google.Protobuf.DoubleValue
  field :accuracy, 3, type: Google.Protobuf.DoubleValue
  field :threshold, 4, type: Google.Protobuf.DoubleValue
  field :f1_score, 5, type: Google.Protobuf.DoubleValue
  field :log_loss, 6, type: Google.Protobuf.DoubleValue
  field :roc_auc, 7, type: Google.Protobuf.DoubleValue
end

defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          positive_class_threshold: Google.Protobuf.DoubleValue.t() | nil,
          true_positives: Google.Protobuf.Int64Value.t() | nil,
          false_positives: Google.Protobuf.Int64Value.t() | nil,
          true_negatives: Google.Protobuf.Int64Value.t() | nil,
          false_negatives: Google.Protobuf.Int64Value.t() | nil,
          precision: Google.Protobuf.DoubleValue.t() | nil,
          recall: Google.Protobuf.DoubleValue.t() | nil,
          f1_score: Google.Protobuf.DoubleValue.t() | nil,
          accuracy: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [
    :positive_class_threshold,
    :true_positives,
    :false_positives,
    :true_negatives,
    :false_negatives,
    :precision,
    :recall,
    :f1_score,
    :accuracy
  ]

  field :positive_class_threshold, 1, type: Google.Protobuf.DoubleValue
  field :true_positives, 2, type: Google.Protobuf.Int64Value
  field :false_positives, 3, type: Google.Protobuf.Int64Value
  field :true_negatives, 4, type: Google.Protobuf.Int64Value
  field :false_negatives, 5, type: Google.Protobuf.Int64Value
  field :precision, 6, type: Google.Protobuf.DoubleValue
  field :recall, 7, type: Google.Protobuf.DoubleValue
  field :f1_score, 8, type: Google.Protobuf.DoubleValue
  field :accuracy, 9, type: Google.Protobuf.DoubleValue
end

defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_classification_metrics:
            Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics.t() | nil,
          binary_confusion_matrix_list: [
            Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix.t()
          ],
          positive_label: String.t(),
          negative_label: String.t()
        }

  defstruct [
    :aggregate_classification_metrics,
    :binary_confusion_matrix_list,
    :positive_label,
    :negative_label
  ]

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics

  field :binary_confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix

  field :positive_label, 3, type: :string
  field :negative_label, 4, type: :string
end

defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predicted_label: String.t(),
          item_count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:predicted_label, :item_count]

  field :predicted_label, 1, type: :string
  field :item_count, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actual_label: String.t(),
          entries: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry.t()
          ]
        }

  defstruct [:actual_label, :entries]

  field :actual_label, 1, type: :string

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry
end

defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: Google.Protobuf.DoubleValue.t() | nil,
          rows: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row.t()
          ]
        }

  defstruct [:confidence_threshold, :rows]

  field :confidence_threshold, 1, type: Google.Protobuf.DoubleValue

  field :rows, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row
end

defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_classification_metrics:
            Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics.t() | nil,
          confusion_matrix_list: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.t()
          ]
        }

  defstruct [:aggregate_classification_metrics, :confusion_matrix_list]

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics

  field :confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix
end

defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: String.t(),
          count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:category, :count]

  field :category, 1, type: :string
  field :count, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category_counts: [
            Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount.t()
          ]
        }

  defstruct [:category_counts]

  field :category_counts, 1,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount
end

defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any},
          feature_column: String.t()
        }

  defstruct [:value, :feature_column]

  oneof :value, 0
  field :feature_column, 1, type: :string
  field :numerical_value, 2, type: Google.Protobuf.DoubleValue, oneof: 0

  field :categorical_value, 3,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue,
    oneof: 0
end

defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          centroid_id: integer,
          feature_values: [
            Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.t()
          ],
          count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:centroid_id, :feature_values, :count]

  field :centroid_id, 1, type: :int64

  field :feature_values, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue

  field :count, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          davies_bouldin_index: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_distance: Google.Protobuf.DoubleValue.t() | nil,
          clusters: [Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.t()]
        }

  defstruct [:davies_bouldin_index, :mean_squared_distance, :clusters]

  field :davies_bouldin_index, 1, type: Google.Protobuf.DoubleValue
  field :mean_squared_distance, 2, type: Google.Protobuf.DoubleValue

  field :clusters, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster
end

defmodule Google.Cloud.Bigquery.V2.Model.RankingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_average_precision: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_error: Google.Protobuf.DoubleValue.t() | nil,
          normalized_discounted_cumulative_gain: Google.Protobuf.DoubleValue.t() | nil,
          average_rank: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [
    :mean_average_precision,
    :mean_squared_error,
    :normalized_discounted_cumulative_gain,
    :average_rank
  ]

  field :mean_average_precision, 1, type: Google.Protobuf.DoubleValue
  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue
  field :normalized_discounted_cumulative_gain, 3, type: Google.Protobuf.DoubleValue
  field :average_rank, 4, type: Google.Protobuf.DoubleValue
end

defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          arima_fitting_metrics: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t() | nil,
          has_drift: boolean,
          time_series_id: String.t(),
          seasonal_periods: [
            [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()]
          ]
        }

  defstruct [
    :non_seasonal_order,
    :arima_fitting_metrics,
    :has_drift,
    :time_series_id,
    :seasonal_periods
  ]

  field :non_seasonal_order, 1, type: Google.Cloud.Bigquery.V2.Model.ArimaOrder
  field :arima_fitting_metrics, 2, type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics
  field :has_drift, 3, type: :bool
  field :time_series_id, 4, type: :string

  field :seasonal_periods, 5,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    enum: true
end

defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: [Google.Cloud.Bigquery.V2.Model.ArimaOrder.t()],
          arima_fitting_metrics: [Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t()],
          seasonal_periods: [
            [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()]
          ],
          has_drift: [boolean],
          time_series_id: [String.t()],
          arima_single_model_forecasting_metrics: [
            Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics.t()
          ]
        }

  defstruct [
    :non_seasonal_order,
    :arima_fitting_metrics,
    :seasonal_periods,
    :has_drift,
    :time_series_id,
    :arima_single_model_forecasting_metrics
  ]

  field :non_seasonal_order, 1, repeated: true, type: Google.Cloud.Bigquery.V2.Model.ArimaOrder

  field :arima_fitting_metrics, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics

  field :seasonal_periods, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    enum: true

  field :has_drift, 4, repeated: true, type: :bool
  field :time_series_id, 5, repeated: true, type: :string

  field :arima_single_model_forecasting_metrics, 6,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics
end

defmodule Google.Cloud.Bigquery.V2.Model.EvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: {atom, any}
        }

  defstruct [:metrics]

  oneof :metrics, 0
  field :regression_metrics, 1, type: Google.Cloud.Bigquery.V2.Model.RegressionMetrics, oneof: 0

  field :binary_classification_metrics, 2,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics,
    oneof: 0

  field :multi_class_classification_metrics, 3,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics,
    oneof: 0

  field :clustering_metrics, 4, type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics, oneof: 0
  field :ranking_metrics, 5, type: Google.Cloud.Bigquery.V2.Model.RankingMetrics, oneof: 0

  field :arima_forecasting_metrics, 6,
    type: Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics,
    oneof: 0
end

defmodule Google.Cloud.Bigquery.V2.Model.DataSplitResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_table: Google.Cloud.Bigquery.V2.TableReference.t() | nil,
          evaluation_table: Google.Cloud.Bigquery.V2.TableReference.t() | nil
        }

  defstruct [:training_table, :evaluation_table]

  field :training_table, 1, type: Google.Cloud.Bigquery.V2.TableReference
  field :evaluation_table, 2, type: Google.Cloud.Bigquery.V2.TableReference
end

defmodule Google.Cloud.Bigquery.V2.Model.ArimaOrder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          p: integer,
          d: integer,
          q: integer
        }

  defstruct [:p, :d, :q]

  field :p, 1, type: :int64
  field :d, 2, type: :int64
  field :q, 3, type: :int64
end

defmodule Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_likelihood: float | :infinity | :negative_infinity | :nan,
          aic: float | :infinity | :negative_infinity | :nan,
          variance: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:log_likelihood, :aic, :variance]

  field :log_likelihood, 1, type: :double
  field :aic, 2, type: :double
  field :variance, 3, type: :double
end

defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_name: String.t(),
          attribution: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:feature_name, :attribution]

  field :feature_name, 1, type: :string
  field :attribution, 2, type: Google.Protobuf.DoubleValue
end

defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanations: [Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation.t()],
          class_label: String.t()
        }

  defstruct [:explanations, :class_label]

  field :explanations, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation

  field :class_label, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_iterations: integer,
          loss_type: Google.Cloud.Bigquery.V2.Model.LossType.t(),
          learn_rate: float | :infinity | :negative_infinity | :nan,
          l1_regularization: Google.Protobuf.DoubleValue.t() | nil,
          l2_regularization: Google.Protobuf.DoubleValue.t() | nil,
          min_relative_progress: Google.Protobuf.DoubleValue.t() | nil,
          warm_start: Google.Protobuf.BoolValue.t() | nil,
          early_stop: Google.Protobuf.BoolValue.t() | nil,
          input_label_columns: [String.t()],
          data_split_method: Google.Cloud.Bigquery.V2.Model.DataSplitMethod.t(),
          data_split_eval_fraction: float | :infinity | :negative_infinity | :nan,
          data_split_column: String.t(),
          learn_rate_strategy: Google.Cloud.Bigquery.V2.Model.LearnRateStrategy.t(),
          initial_learn_rate: float | :infinity | :negative_infinity | :nan,
          label_class_weights: %{String.t() => float | :infinity | :negative_infinity | :nan},
          user_column: String.t(),
          item_column: String.t(),
          distance_type: Google.Cloud.Bigquery.V2.Model.DistanceType.t(),
          num_clusters: integer,
          model_uri: String.t(),
          optimization_strategy: Google.Cloud.Bigquery.V2.Model.OptimizationStrategy.t(),
          hidden_units: [integer],
          batch_size: integer,
          dropout: Google.Protobuf.DoubleValue.t() | nil,
          max_tree_depth: integer,
          subsample: float | :infinity | :negative_infinity | :nan,
          min_split_loss: Google.Protobuf.DoubleValue.t() | nil,
          num_factors: integer,
          feedback_type: Google.Cloud.Bigquery.V2.Model.FeedbackType.t(),
          wals_alpha: Google.Protobuf.DoubleValue.t() | nil,
          kmeans_initialization_method:
            Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod.t(),
          kmeans_initialization_column: String.t(),
          time_series_timestamp_column: String.t(),
          time_series_data_column: String.t(),
          auto_arima: boolean,
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          data_frequency: Google.Cloud.Bigquery.V2.Model.DataFrequency.t(),
          include_drift: boolean,
          holiday_region: Google.Cloud.Bigquery.V2.Model.HolidayRegion.t(),
          time_series_id_column: String.t(),
          horizon: integer,
          preserve_input_structs: boolean,
          auto_arima_max_order: integer
        }

  defstruct [
    :max_iterations,
    :loss_type,
    :learn_rate,
    :l1_regularization,
    :l2_regularization,
    :min_relative_progress,
    :warm_start,
    :early_stop,
    :input_label_columns,
    :data_split_method,
    :data_split_eval_fraction,
    :data_split_column,
    :learn_rate_strategy,
    :initial_learn_rate,
    :label_class_weights,
    :user_column,
    :item_column,
    :distance_type,
    :num_clusters,
    :model_uri,
    :optimization_strategy,
    :hidden_units,
    :batch_size,
    :dropout,
    :max_tree_depth,
    :subsample,
    :min_split_loss,
    :num_factors,
    :feedback_type,
    :wals_alpha,
    :kmeans_initialization_method,
    :kmeans_initialization_column,
    :time_series_timestamp_column,
    :time_series_data_column,
    :auto_arima,
    :non_seasonal_order,
    :data_frequency,
    :include_drift,
    :holiday_region,
    :time_series_id_column,
    :horizon,
    :preserve_input_structs,
    :auto_arima_max_order
  ]

  field :max_iterations, 1, type: :int64
  field :loss_type, 2, type: Google.Cloud.Bigquery.V2.Model.LossType, enum: true
  field :learn_rate, 3, type: :double
  field :l1_regularization, 4, type: Google.Protobuf.DoubleValue
  field :l2_regularization, 5, type: Google.Protobuf.DoubleValue
  field :min_relative_progress, 6, type: Google.Protobuf.DoubleValue
  field :warm_start, 7, type: Google.Protobuf.BoolValue
  field :early_stop, 8, type: Google.Protobuf.BoolValue
  field :input_label_columns, 9, repeated: true, type: :string
  field :data_split_method, 10, type: Google.Cloud.Bigquery.V2.Model.DataSplitMethod, enum: true
  field :data_split_eval_fraction, 11, type: :double
  field :data_split_column, 12, type: :string

  field :learn_rate_strategy, 13,
    type: Google.Cloud.Bigquery.V2.Model.LearnRateStrategy,
    enum: true

  field :initial_learn_rate, 16, type: :double

  field :label_class_weights, 17,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry,
    map: true

  field :user_column, 18, type: :string
  field :item_column, 19, type: :string
  field :distance_type, 20, type: Google.Cloud.Bigquery.V2.Model.DistanceType, enum: true
  field :num_clusters, 21, type: :int64
  field :model_uri, 22, type: :string

  field :optimization_strategy, 23,
    type: Google.Cloud.Bigquery.V2.Model.OptimizationStrategy,
    enum: true

  field :hidden_units, 24, repeated: true, type: :int64
  field :batch_size, 25, type: :int64
  field :dropout, 26, type: Google.Protobuf.DoubleValue
  field :max_tree_depth, 27, type: :int64
  field :subsample, 28, type: :double
  field :min_split_loss, 29, type: Google.Protobuf.DoubleValue
  field :num_factors, 30, type: :int64
  field :feedback_type, 31, type: Google.Cloud.Bigquery.V2.Model.FeedbackType, enum: true
  field :wals_alpha, 32, type: Google.Protobuf.DoubleValue

  field :kmeans_initialization_method, 33,
    type: Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod,
    enum: true

  field :kmeans_initialization_column, 34, type: :string
  field :time_series_timestamp_column, 35, type: :string
  field :time_series_data_column, 36, type: :string
  field :auto_arima, 37, type: :bool
  field :non_seasonal_order, 38, type: Google.Cloud.Bigquery.V2.Model.ArimaOrder
  field :data_frequency, 39, type: Google.Cloud.Bigquery.V2.Model.DataFrequency, enum: true
  field :include_drift, 41, type: :bool
  field :holiday_region, 42, type: Google.Cloud.Bigquery.V2.Model.HolidayRegion, enum: true
  field :time_series_id_column, 43, type: :string
  field :horizon, 44, type: :int64
  field :preserve_input_structs, 45, type: :bool
  field :auto_arima_max_order, 46, type: :int64
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          centroid_id: integer,
          cluster_radius: Google.Protobuf.DoubleValue.t() | nil,
          cluster_size: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:centroid_id, :cluster_radius, :cluster_size]

  field :centroid_id, 1, type: :int64
  field :cluster_radius, 2, type: Google.Protobuf.DoubleValue
  field :cluster_size, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auto_regressive_coefficients: [float | :infinity | :negative_infinity | :nan],
          moving_average_coefficients: [float | :infinity | :negative_infinity | :nan],
          intercept_coefficient: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:auto_regressive_coefficients, :moving_average_coefficients, :intercept_coefficient]

  field :auto_regressive_coefficients, 1, repeated: true, type: :double
  field :moving_average_coefficients, 2, repeated: true, type: :double
  field :intercept_coefficient, 3, type: :double
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          arima_coefficients:
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients.t()
            | nil,
          arima_fitting_metrics: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t() | nil,
          has_drift: boolean,
          time_series_id: String.t(),
          seasonal_periods: [
            [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()]
          ]
        }

  defstruct [
    :non_seasonal_order,
    :arima_coefficients,
    :arima_fitting_metrics,
    :has_drift,
    :time_series_id,
    :seasonal_periods
  ]

  field :non_seasonal_order, 1, type: Google.Cloud.Bigquery.V2.Model.ArimaOrder

  field :arima_coefficients, 2,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients

  field :arima_fitting_metrics, 3, type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics
  field :has_drift, 4, type: :bool
  field :time_series_id, 5, type: :string

  field :seasonal_periods, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    enum: true
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          arima_model_info: [
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo.t()
          ],
          seasonal_periods: [
            [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()]
          ]
        }

  defstruct [:arima_model_info, :seasonal_periods]

  field :arima_model_info, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo

  field :seasonal_periods, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    enum: true
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: Google.Protobuf.Int32Value.t() | nil,
          duration_ms: Google.Protobuf.Int64Value.t() | nil,
          training_loss: Google.Protobuf.DoubleValue.t() | nil,
          eval_loss: Google.Protobuf.DoubleValue.t() | nil,
          learn_rate: float | :infinity | :negative_infinity | :nan,
          cluster_infos: [
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo.t()
          ],
          arima_result:
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.t() | nil
        }

  defstruct [
    :index,
    :duration_ms,
    :training_loss,
    :eval_loss,
    :learn_rate,
    :cluster_infos,
    :arima_result
  ]

  field :index, 1, type: Google.Protobuf.Int32Value
  field :duration_ms, 4, type: Google.Protobuf.Int64Value
  field :training_loss, 5, type: Google.Protobuf.DoubleValue
  field :eval_loss, 6, type: Google.Protobuf.DoubleValue
  field :learn_rate, 7, type: :double

  field :cluster_infos, 8,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo

  field :arima_result, 9,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult
end

defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_options: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          results: [Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.t()],
          evaluation_metrics: Google.Cloud.Bigquery.V2.Model.EvaluationMetrics.t() | nil,
          data_split_result: Google.Cloud.Bigquery.V2.Model.DataSplitResult.t() | nil,
          global_explanations: [Google.Cloud.Bigquery.V2.Model.GlobalExplanation.t()]
        }

  defstruct [
    :training_options,
    :start_time,
    :results,
    :evaluation_metrics,
    :data_split_result,
    :global_explanations
  ]

  field :training_options, 1, type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions
  field :start_time, 8, type: Google.Protobuf.Timestamp

  field :results, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult

  field :evaluation_metrics, 7, type: Google.Cloud.Bigquery.V2.Model.EvaluationMetrics
  field :data_split_result, 9, type: Google.Cloud.Bigquery.V2.Model.DataSplitResult

  field :global_explanations, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation
end

defmodule Google.Cloud.Bigquery.V2.Model.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          model_reference: Google.Cloud.Bigquery.V2.ModelReference.t() | nil,
          creation_time: integer,
          last_modified_time: integer,
          description: String.t(),
          friendly_name: String.t(),
          labels: %{String.t() => String.t()},
          expiration_time: integer,
          location: String.t(),
          encryption_configuration: Google.Cloud.Bigquery.V2.EncryptionConfiguration.t() | nil,
          model_type: Google.Cloud.Bigquery.V2.Model.ModelType.t(),
          training_runs: [Google.Cloud.Bigquery.V2.Model.TrainingRun.t()],
          feature_columns: [Google.Cloud.Bigquery.V2.StandardSqlField.t()],
          label_columns: [Google.Cloud.Bigquery.V2.StandardSqlField.t()]
        }

  defstruct [
    :etag,
    :model_reference,
    :creation_time,
    :last_modified_time,
    :description,
    :friendly_name,
    :labels,
    :expiration_time,
    :location,
    :encryption_configuration,
    :model_type,
    :training_runs,
    :feature_columns,
    :label_columns
  ]

  field :etag, 1, type: :string
  field :model_reference, 2, type: Google.Cloud.Bigquery.V2.ModelReference
  field :creation_time, 5, type: :int64
  field :last_modified_time, 6, type: :int64
  field :description, 12, type: :string
  field :friendly_name, 14, type: :string
  field :labels, 15, repeated: true, type: Google.Cloud.Bigquery.V2.Model.LabelsEntry, map: true
  field :expiration_time, 16, type: :int64
  field :location, 13, type: :string
  field :encryption_configuration, 17, type: Google.Cloud.Bigquery.V2.EncryptionConfiguration
  field :model_type, 7, type: Google.Cloud.Bigquery.V2.Model.ModelType, enum: true
  field :training_runs, 9, repeated: true, type: Google.Cloud.Bigquery.V2.Model.TrainingRun
  field :feature_columns, 10, repeated: true, type: Google.Cloud.Bigquery.V2.StandardSqlField
  field :label_columns, 11, repeated: true, type: Google.Cloud.Bigquery.V2.StandardSqlField
end

defmodule Google.Cloud.Bigquery.V2.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :model_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :model_id, 3, type: :string
end

defmodule Google.Cloud.Bigquery.V2.PatchModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t(),
          model: Google.Cloud.Bigquery.V2.Model.t() | nil
        }

  defstruct [:project_id, :dataset_id, :model_id, :model]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :model_id, 3, type: :string
  field :model, 4, type: Google.Cloud.Bigquery.V2.Model
end

defmodule Google.Cloud.Bigquery.V2.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :model_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :model_id, 3, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          max_results: Google.Protobuf.UInt32Value.t() | nil,
          page_token: String.t()
        }

  defstruct [:project_id, :dataset_id, :max_results, :page_token]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :max_results, 3, type: Google.Protobuf.UInt32Value
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Cloud.Bigquery.V2.Model.t()],
          next_page_token: String.t()
        }

  defstruct [:models, :next_page_token]

  field :models, 1, repeated: true, type: Google.Cloud.Bigquery.V2.Model
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ModelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.v2.ModelService"

  rpc :GetModel, Google.Cloud.Bigquery.V2.GetModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :ListModels,
      Google.Cloud.Bigquery.V2.ListModelsRequest,
      Google.Cloud.Bigquery.V2.ListModelsResponse

  rpc :PatchModel, Google.Cloud.Bigquery.V2.PatchModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :DeleteModel, Google.Cloud.Bigquery.V2.DeleteModelRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Bigquery.V2.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.ModelService.Service
end
