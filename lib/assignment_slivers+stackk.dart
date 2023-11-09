import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: assign(),
  ));
}

class assign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.cyan,
            leading: Icon(Icons.menu),
            floating: true,
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                    child: Text(
                  "Type your location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.cyan,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(100)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "enter your location",
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Positioned(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Icon(
                                Icons.hotel,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Hotel",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        color: Colors.pinkAccent,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 180,
                      top: 20,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Icon(
                                Icons.restaurant_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Restaurant",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        color: Colors.teal,
                        height: 120,
                        width: 120,
                      )),
                  Positioned(
                      left: 350,
                      top: 20,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Icon(Icons.local_cafe,color: Colors.white,),
                            ),
                            Text(
                              "Cafe",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        color: Colors.amberAccent,
                        height: 120,
                        width: 120,
                      ))
                ],
              ),
            ),
            Container(decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
                    child: Image(
                      image: NetworkImage(
                          "data:image/jpeg;base64,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",
                      ),
                    ),
                  ),
                Column(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Text("Awesome room near Kakkanad",style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Kakkanad,kochi",style: TextStyle(fontSize: 12),),
                    ),
                  ],
                )

              ],),
            ),
                //Align(alignment: Alignment.center,

                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Text("(220 reviews)",style: TextStyle(fontSize: 10),),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Image(image: NetworkImage("data:image/jpeg;base64,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"),),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Peaceful room in kakkanad",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Kakkanad,kochi",style: TextStyle(fontSize: 12),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Align(alignment: Alignment.center,),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Text("(220 Reviews)",style: TextStyle(fontSize: 10),)
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Image(image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHUAsAMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAEBQIDBgABBwj/xABGEAACAQMBAwULCQcCBwAAAAABAgMABBEhBRIxExRBUWEGIkJxgZGSobHB0RUjMlJTcnOy4SQzVGJ0k6Jj8BY0Q4Kjs/H/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAgEQEBAQEAAgICAwAAAAAAAAAAARECEjEhQQMyQlFh/9oADAMBAAIRAxEAPwDPpCDTKwvJLXCtvPH9U9HiNDRbmdDRabmRvHHUcVxW2OySU9hW3vE5a2ZQ4+kvDzjo8dXLAzOq4UDww3HsxSO3jeFxLbuysOBU8aeWd8k+EnAil4KeCnxHo9lXz3Km8WLuaA6Y0qEuzQe+UHHHKjUHrHb7RTGN90FXXvh6/hRUYDqCy4z0dXmrRJbaRiVd193lF44Gh7R2UTzMdXqoiSDk2EkeMg6dGM9Hi9+td8p2CkrJdQxuDhkdgCp6jTJQLQDoruZr1eqiPlPZv8bB6Yr35R2d0XsHpigBOZDq9VdzMDo9VF/KGzv4yD0xXHaGzv42D0xQAJs+weaotZL1UedobO/jIPTFQO0dnfxkHpikC9rMDoqtrUdVMH2js7+Nt/TFVnaGzyQqXULs2gVWySeqmC2WFYYy7cOrrpc9s8km8ww44D6n6+ynrwmZ999OoDwf17a5oo0XAxgdQoBHzJVGAMCqJrdgPmwvaWzTeXGNVKsfBOCfVQsqKoDzMACNF6/jQCtod7RFPax4D/fVVM6RQfvXJf6o+l+lFzzO/ewryaAcfC/TyUCyBQSfPS0YEglhYjGh7dKYxFR4OR20AmzZ98LJGUY6BZBuknszU5LK7s9d4g9R1FY9c1rz1DiMxcVBB6qt71s5B8dZVO6SKK45vdQSK4P001FadElGm6SfHWV1pou3v2gO5KC8OPKvi+FG/KqQxiSOTlEPVxB7RSsQPIjkAjdXJ8VItpqy3UO6xHHgcVpx3fVZ98xu4ttROgDI2o1GK5bqx6IpAOrePxrK29tcyWsksCvIVIAXfwCTnp8lSSDa3HmJA/qf0rebWWxrOc2eNI39I/GrBNY/ZyekfjWWgg2q7a2WB/Uj4Vpou5q6+aDGTelGVG+NdM9dPxpeUW8rY/ZyekfjXnK2WuY5OOnfN8an/wAK3fVJ/cX415/wpd/Vf+4vxp+NHlEDLZD/AKcnpN8ara4sgDiJye1z8asl7lrtI2chwFBJO+ug89JdqbL2haughgaUOgcEzBdD2a0ePQ8oYvcWX2cnpH40PJcWRGOSc/8AcfjSNrfax4WJxprzodPkqprXbBzjZ5ODr+1AUs6HlD+TaiBMIjZHZVS3/OCwHzYXwmpHLDKscZk3lZ03ipbOD0jNebIiLX0m8ScKONLTOHmOPmFyT4bD3fGhJQFJeV8seJbiaMvA0cGUGpOKSyiRmyVJPWTWfXeK5517NcZbdiXjxLcKCk5NmzIWbPXwqwrIZANz11y7KvJwrJGcHt41EvXS8k9jINo3ca7i3DmM8Ufvh5jkUu2ttJheIjW8aryJYmHMeTnq4eqrkBpZtdTz1fwD7a9LuTxefzbrLPPym0CcaCbcGeOAa+1R2q4yhwfFmvhwH7e39SfzV98jA3q4e58u7i3FUlmq207HGdzwaxm14929twDnU19Bdc2k33PfWH24pF/bgjpNZ/cV9Vru5qzRtkTlvtUPmVqY80jJI1wsoB85FU9zIzsa5H8w/K1GpxlPTyin/I118enP17ULYIoBDHG7760ajE2zx1Rt+UUoiO9Emfs2NNh++sPw2/KKtFMDgVEGuOa8oJG6xzSf8NvZSO6hRzbk8eRQf406uv8AlJ/w29hpNN9GLsjj/LQcBiyiYoxzqV08oFVT7PjSGTBbOG18QB99GJnkwfquvtFSnwYn7UY/+NaNPGF21GFNtgcYyf8AI0JsdP26T7o99M9sgZtQfsj+Y0JsgDn0mPqj31z9fs1noxni313TprQNxbxRgtI4Uk4GensHXTZwMGqZmWNWLkgHHBSdfJU3nelS5Gfl5KN1bdlILBRhcZJ4ccVeNqSwxKkduoxwLyZ9QHvrr/ck5FkEhK3ETY5MrnDDTXFCzu/g2zj7zKPfWnPPj6R1dCLIOls0Bf4lvkx9l761Fvb2ZOmzowf9Sc/A0SbCHJuOY2Y3FOAQXzjXpxW/f5OcY8/j69vj2MbRb+pP5q/QEaoWOWHDqr4ddwoduy6KoaYvhRgLk5xX29JYkVt/AbOhz0f7xXL1Za6eZkFhFaJ0DcVx66xPdQqDa6BSNJW82tS293QbSjvWttkq5xE0isIxgldQpJGBnGPLQG002ttnawm2fs2aRN7eAOFwD15IxWf9VX+N93LDOyLj76/lajFGsg/mX2mhu5aGSHZM6TbofeXIVw2NG6QaIUd+33l9tdPPpjfb2FvmAf8ATf2mm2/iay7Fb8tKAjJEVdSp3G0Ix10xkbdntCR4J/LWkRYYmavRLQhlHQtSRt7XSqxC+5kBtZ/w29hpVP8AQjI+zi9gou8fdtpvw29hpPtK9W1tFdlLNuRgKOwD1VPXwrkQP3co6ipryX9033G/9YrOw90u87xPBl2xqGxnGevx09SVZ7QyJ9Eqw/wqJdUye3Qc234bfnagtiZ5/L90e+j9vaG2H+m352oHYWu0Jvuj31l1+zSemhCcoMCo3CCJW3wdccFJ9leG6Ni9tKYWkMwJVAMg4Pj0oe92494sqRbOkiZRqC65bjwzjqqd3uK/iWbTdTyGA53biJs8mRnDDQZoK4uBr8zN/bNRvbyaUwhrO6j3J43OYidAwPRmhbrakCuyyPybDiHBGK3xklDcsXLKCaLM8rJukkA0sgw2AASe00bcT8ztu/j3s5YeTX3Vy35dEuKLfuas7m55eUAOTxyT761kdpHnv5JWPaahFs/kmIUk4OlWW1vcnbBRy/I82JxjTe3h68UTkXoVa29oJlAhBbhliTSburnc7Ugt0kdYQmDHnCk56vNWqFvGiqzHGvECsd3W2d423rfmNpLKogDMyjdGST0nyUup9CX7bDucBh2VKssciFmXdDIRnRvjVO89xthI4yQkZw2DjLa58w9pqHc9bHmDc9WWCbIwIpcaa5+icdVF2ogiSOSPe3jgkgcdfHXRz6jK+xErB2kYcCGx4tcUWyIZoPmd8lTkEfS0oaGB5FIRXIIIB3AM8e2jktLklG5dVKDC95vYrSVFTBZYj+zqh3t0AHgKgkyRS6rgZAJIx4695ldYK87j/sD41E2N1jBu4t08cwj41WpyKL26hS3k33C7yHU8BkUvvLzZ8NtHJdygIu4N7B0OAPcaW7QlOrb4K+Cd3j0aDtxQsEkVzDJBcoj2/wBEoU3gD1Z4adhqL3vwfhnonfauz4tq3dzIySwkMIEY8SGAHq3q3Fhc7PvNnB9nzRyxMDjkmyAd3BHjzWZOzNjRrurZ2qr05hQ58pBNERSWduByciJgboACgAdVRLIqzU9p7Ne/MfN5FDxoQY3BDaknOPLSvZmzbuzvpXliBUqAGVsjPtptJtG2ZdyV0dRw3hjFVSbQiVMJMsijXclfPr4+fNFynNi9rmGG1MKTbzKNQW4DjisjZxSbe2zJHI7rZw99NunGR0LkdZ9QNMtoXmzrlSk0Xzi9GobHWHB/+dNK4J47Plfk65MZkbLLL3wbHboR66rZC+TXa8tvYQ/MxJGq6KAOFY6525PM7brKR0EqDRe2doTXEDJOhVuhlOVPl6PLis3POlvC8sjbqr/LSojVWi7uCTTF4IL0R85Zwi5UhTgkMMe+lEcmMa0dFP3uNOI9tc/ps2sG07YnVSMnU0bHfWjE7rgcKw63aqNTk0ZbyyS6qN0H63wpzaXw2blZwscTKSzDpoTaVjtRr2aSFQsGRu9+MkAAcONLrTEJDFyXHTwxTAXQbGWPZrVTn50rVmz9iTkh7hgo44zn1U5Swtk+jDu9oJBpOtwcfTOPHUhdseDny1rGdP0IRcAk+NiT5zXGcA474nspFzpuv114bg1UI8e5Kg7xHiXU0O94Qd7O72k5NKTNnpOa4tkak0yA7ZSC3VwzYhGTvKdVXHX18R5aw209tmVligQQxRjdRVPAU57srswRCHe0l4+SsBNOqOQzY8ZrK+1y/Bob2UaiRiDXc7c+GfPSYX8R03j48GrFuo+O+KRmS3LqdGOKi9wx8Lh0UvN1EB9P1VW13Hw3z2aGgC5JmNxGA51yvHrFSEpGdaVS3Q34yrjIcHydNGO+6aooIWd1dSrY3TkVfJccsPnLaBh2x0uEq72vChVv5tAWQn7n61FU0QlVenzVdG0kn8i+c0NFur4z20QsgHDXy0/EvIwgCJghcnrbjTGGcKBg69WaRrJ/NV8U2CNTVDWijmUnOCerXNFxzDJ77Tx1nYrnhk48tELd9RoDQCYYzmpG4VTjJPZmkK3TE+/jU1utM75oLD9JxjOTgdvGpcopHHzmkYvcDQ+OpC+GmD66elh4ZRw1ruVXB1PnpHz3hl8DTFei+1z7KeljPd3UrtfwRxgsWUbo7c1h7xUhuXErAHrJ46Vu9vyco8c24GkQEA5OgNZC9slu8mQAnNRVQs5aL66eepCaHpdfSFSOx4fqionZMIH7sGlkPai00GdGXz1AzRfXTz17JsyAackM1H5Mg+zFPIW1BpYzwdfPXhucnvps+Nqm2zIxwQY7KrOzUHgU8hbVi3EWO+lX0qkjwk5EiY+8Ko5hH9WrYrOAHvokI6cilZD2tWq99jp66vAxpXV1USW8RXu+RXV1ILlYjh0Ae+piQnNdXUGt3yrEdVeiZgoryuoCzlG69KjyzZONK6uoFemU72D09VREpydNQeNeV1BBrpy2c40pW479vHXV1TVRURrVT6GurqQVuAahjSurqoI40qGOiva6mVQZBUd0V1dQT//Z"),),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Beautiful room in kochi",style: TextStyle(fontWeight:FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Kakkanad,kochi",style: TextStyle(fontSize: 12),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 168),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Text("(220 Reviews)",style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Image(image: NetworkImage("data:image/jpeg;base64,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"),),
                            ),
                          ],
                        ),
                      ),Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Vintage room in kochi",style: TextStyle(fontWeight:FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Kakkanad,kochi",style: TextStyle(fontSize: 12),),
                          ),
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Text("(220 Reviews)",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    )
                    ],
                  ),
                )
          ],),
          ),],
    ),
    );
  }
}
