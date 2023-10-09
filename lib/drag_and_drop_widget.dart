import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_reorderable_grid_view/entities/order_update_entity.dart';
import 'package:flutter_reorderable_grid_view/widgets/reorderable_builder.dart';

class DragAndDropGrid extends StatefulWidget {
  const DragAndDropGrid({
    super.key,
  });

  @override
  State<DragAndDropGrid> createState() => _DragAndDropGridState();
}

class _DragAndDropGridState extends State<DragAndDropGrid> {
  // List<DragAndDropGrid> items =[
  //     const DragAndDropGrid(title:'https://images.rawpixel.com/image_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2VzL3dlYnNpdGUvMjAyMi0wNS9mbDIzNDE3MDY4ODEyLWltYWdlLWtxYXA5cmR3LmpwZw.jpg?s=jwAImzh1wkDGUTR2LkoBUneGK2D5XJ3Ikm7Wi2C5_ME', index: 1),
  //     const DragAndDropGrid(title:     'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANature_%2528129056777%2529.jpeg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAJ',
  //         index: 2),
  //   const DragAndDropGrid(title:    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3A1121098-pink-nature-wallpaper-1920x1080-lockscreen.jpg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAX',
  //       index: 3),
  //   const DragAndDropGrid(title:'https://images.rawpixel.com/image_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2VzL3dlYnNpdGUvMjAyMi0wNS9mbDIzNDE3MDY4ODEyLWltYWdlLWtxYXA5cmR3LmpwZw.jpg?s=jwAImzh1wkDGUTR2LkoBUneGK2D5XJ3Ikm7Wi2C5_ME', index: 4),
  //   const DragAndDropGrid(title:     'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANature_%2528129056777%2529.jpeg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAJ',
  //       index: 5),
  //   const DragAndDropGrid(title:    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3A1121098-pink-nature-wallpaper-1920x1080-lockscreen.jpg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAX',
  //       index: 6),
  //  const  DragAndDropGrid(title:'https://images.rawpixel.com/image_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2VzL3dlYnNpdGUvMjAyMi0wNS9mbDIzNDE3MDY4ODEyLWltYWdlLWtxYXA5cmR3LmpwZw.jpg?s=jwAImzh1wkDGUTR2LkoBUneGK2D5XJ3Ikm7Wi2C5_ME', index: 7),
  //  const  DragAndDropGrid(title:     'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANature_%2528129056777%2529.jpeg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAJ',
  //       index: 8),
  //   const DragAndDropGrid(title:    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3A1121098-pink-nature-wallpaper-1920x1080-lockscreen.jpg&psig=AOvVaw1DAGkOM7y10JyEOnxvyMM9&ust=1695984966554000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiV5L2SzYEDFQAAAAAdAAAAABAX',
  //       index: 9),
  // ];
  final scrollController = ScrollController();
  final gridViewKey = GlobalKey();
  List<String> items = [
    'https://picsum.photos/200/300?grayscale',
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/id/237/200/300",
    'https://source.unsplash.com/user/c_v_r/1900x800',
    'https://source.unsplash.com/user/c_v_r/100x100',
    'https://picsum.photos/200/300/?blur',
    'https://picsum.photos/200/300/?blur=2',
    'https://picsum.photos/200/300.webp',
    'https://picsum.photos/id/870/200/300?grayscale&blur=2',
    'https://picsum.photos/200/300.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final generatedChildren = List.generate(
      items.length,
      (index) => Container(
        key: Key(items.elementAt(index)),
        color: Colors.grey,
        child: Image.network(
          items.elementAt(index),
          fit: BoxFit.cover,
        ),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drag & Drop Widget'),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(CupertinoIcons.back),
          ),
        ),
        body: ReorderableBuilder(
          scrollController: scrollController,
          children: generatedChildren,
          onReorder: (List<OrderUpdateEntity> orderUpdateEntities) {
            for (final orderUpdateEntity in orderUpdateEntities) {
              final item = items.removeAt(orderUpdateEntity.oldIndex);
              items.insert(orderUpdateEntity.newIndex, item);
            }
          },
          builder: (generatedChildren) {
            return GridView(
              controller: scrollController,
              key: gridViewKey,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
              children: generatedChildren,
            );
          },
        ));
  }
}
