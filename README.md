# Melhorias Aplicadas

# Substituição por ListView.builder

A principal melhoria aplicada na tela de lista foi a substituição de Column + SingleChildScrollView por ListView.builder.

Exemplo:

ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ItemWidget();
  },
)

# A página de grid foi otimizada utilizando GridView.builder.

Exemplo:

GridView.builder(
  itemCount: items.length,
  gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemBuilder: (context, index) {
    return Card();
  },
)

# Adicionado suporte ao gesto de pull-to-refresh utilizando RefreshIndicator.

Exemplo:

RefreshIndicator(
  onRefresh: () async {},
  child: ListView.builder(),
)

# Uso de Widgets const

Diversos widgets passaram a utilizar const, reduzindo reconstruções desnecessárias durante o ciclo de renderização do Flutter.