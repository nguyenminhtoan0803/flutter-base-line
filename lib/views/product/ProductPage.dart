import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/controllers/products/ProductController.dart';
import 'package:demo/models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    print('Product id');
    print(Get.parameters['id']);
    if(Get.parameters['id'] == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    controller.fetchProduct(int.parse(Get.parameters['id']!));
    final theme = Theme.of(context);
    final isDarkMode = Get.isDarkMode;
    return controller.obx((state) {
      if(state == null) {
        return _isLoading(isDarkMode);
      }
      return _build(context, state, theme, isDarkMode);
    }, onLoading: _isLoading(isDarkMode));
  }

  Widget _build(BuildContext context, ProductModel productModel, ThemeData themeData, bool isDarkMode) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            elevation: 0,
            snap: true,
            floating: true,
            stretch: true,
            backgroundColor: Colors.grey.shade50,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground
              ],
              background: CachedNetworkImage(
                imageUrl: productModel.image,
                fit: BoxFit.cover,
                placeholder: (context, url) => _isLoading(isDarkMode),
                errorWidget: (context, url, error) => _isLoading(isDarkMode),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(45),
              child: Transform.translate(
                offset: const Offset(0, 1),
                child: Container(
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  color:Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productModel.brand, style: TextStyle(color: Colors.orange.shade400, fontSize: 14),),
                      const SizedBox(height: 8,),
                      Text(productModel.name, style: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Text(productModel.rating.toString(), style: themeData.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),),
                          const SizedBox(width: 8,),
                          Icon(Icons.start, size: 18, color: Colors.orange.shade400,),
                          Icon(Icons.start, size: 18, color: Colors.orange.shade400,),
                          Icon(Icons.start, size: 18, color: Colors.orange.shade400,),
                          Icon(Icons.start, size: 18, color: Colors.orange.shade400,),
                          Icon(Icons.start, size: 18, color: Colors.orange.shade100,),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${productModel.price}.00',
                            style: themeData.textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height: 32,
                            child: Row(
                              children: [
                                ZoomTapAnimation(
                                    onTap: () => controller.decrement(),
                                    child: const Icon(Icons.remove, size: 18,)
                                ),
                                const SizedBox(width: 14,),
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: TextField(
                                    controller: controller.quantityController,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(bottom: 10),
                                      border: InputBorder.none,
                                      hintText: '1',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w700
                                      )
                                    ),
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(width: 4,),
                                ZoomTapAnimation(
                                  onTap: () => controller.increment(),
                                  child: const Icon(Icons.add, size: 18,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text("Take a break from jeans with the parker long straight pant. These lightweight, pleat front pants feature a flattering high waist and loose, straight legs.",
                        style: TextStyle(height: 1.5, color: Colors.grey.shade800, fontSize: 15,),
                      ),
                      const SizedBox(height: 30,),
                      Text("Color", style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),
                      const SizedBox(height: 10,),
                      const SizedBox(height: 20,),
                      Text("Size", style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),
                      const SizedBox(height: 10,),
                      const SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        height: 50,
                        elevation: 0,
                        splashColor: Colors.yellow[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.yellow[800],
                        child: const Center(
                          child: Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18),),
                        ),
                      )
                    ],
                  ),
                )
              ]),
          )
        ],
      ),
    );
  }
  Widget _isLoading(bool isDarkMode) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}