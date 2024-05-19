import 'package:dio/dio.dart';
import 'package:rentify/features/buyer_seller/data/models/property.dart';
import 'package:retrofit/retrofit.dart';

part 'property_api_service.g.dart';

@RestApi()
abstract class PropertyApiService {
  factory PropertyApiService(Dio dio) = _PropertyApiService;


  @POST("/properties")
  Future<void> createProperty(@Body() Property property);

  @GET("/properties/{id}")
  Future<Property> getProperty(@Path("id") String id);

  @GET("/properties")
  Future<List<Property>> getAllProperties();

  @PUT("/properties/{id}")
  Future<void> updateProperty(@Path("id") String id, @Body() Property property);

  @DELETE("/properties/{id}")
  Future<void> deleteProperty(@Path("id") String id);
  }


