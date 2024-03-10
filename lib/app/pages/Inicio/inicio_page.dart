import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Ratatá',
                style: heading5.copyWith(fontWeight: FontWeight.w500, fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextFormField(
                controller: controller,
                style: body2.copyWith(color: blackColor),
                //inputFormatters: [],
                readOnly: true,
                keyboardType: TextInputType.text,
                cursorColor: blackColor60,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: blackColor), borderRadius: BorderRadius.circular(36)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: blackColor), borderRadius: BorderRadius.circular(36)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: blackColor), borderRadius: BorderRadius.circular(36)),
                    contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    hintText: 'Escolha uma cidade',
                    hintStyle: body2.copyWith(color: blackColor),
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(
                          Icons.location_on,
                          color: blackColor
                      ),
                    )
                ),
                //validator: (value){},
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.9),
                            blurRadius: 3,
                            offset: const Offset(5, 5),
                          ),
                        ],
                      ),
                      height: 110,
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                gradient: LinearGradient(
                                  stops: const [0.55, 1],
                                    colors: [primaryColor, whiteColor,],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                              decoration: BoxDecoration(
                                                  color: greyColor,
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                              child: Text(
                                                'Premium',
                                                style: tiny,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 6),
                                              child: Text(
                                                'Assine seu plano anual agora ',
                                                style: heading6,
                                                maxLines: 2,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text('de 599,99R\$', style: caption),
                                          Text('12x de 299,99R\$', style: body1),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                                  backgroundColor: primaryColor,
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                                              ),
                                              onPressed: (){},
                                              child: Text('Assinar', style: caption.copyWith(color: blueColor, fontWeight: FontWeight.w600))
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: -40,
                              child: Opacity(
                                opacity: 0.3,
                                child: Image.asset(
                                  ImagesPath.trophy,
                                  height: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ///---------------------------------------------------
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
