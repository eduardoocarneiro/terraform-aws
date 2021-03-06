locals {
  files                 = ["ips.json", "report.csv", "sitemap.xml"]
  file_extensions       = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  ips = [
    {
      public : "123.123.123.123"
      private : "123.123.123.123"
    },

    {
      public : "122.122.122.122"
      private : "122.122.122.122"
    }
  ]
}