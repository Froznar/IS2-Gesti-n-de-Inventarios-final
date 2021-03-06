import 'package:di/di.dart';

import 'db_connection.dart';
import '../repository/user_repository.dart';
import '../repository/proveedor_repository.dart';
import '../repository/user_product_register_repository.dart';
import '../repository/user_ventas_repository.dart';
import '../service/user_service.dart';
import '../service/user_product_register_service.dart';
import '../service/user_ventas_service.dart';
import '../repository/user_administrator_repository.dart';

import '../service/user_service.dart';
import '../service/user_product_register_service.dart';
import '../service/user_administrator_service.dart';

import '../service/proveedor_service.dart';
import '../rest/user_rest.dart';
import '../rest/proveedor_rest.dart';
import '../rest/user_product_register_rest.dart';
import '../rest/user_administrator_rest.dart';
import '../rest/hello_rest.dart';
import '../rest/user_ventas_rest.dart';

var injector = new ModuleInjector([new Module()

  ..bind(DbConnection)

  // repositories
  ..bind(UserRepository)
  ..bind(User_Product_Register_Repository)
  ..bind(UserVentasRepository)
  ..bind(User_Administrator_Repository)
  ..bind(ProveedorRepository)

  // services
  ..bind(UserService)
  ..bind(User_Product_Register_Service)
  ..bind(UserVentasService)
  ..bind(User_Administrator_Service)
  ..bind(ProveedorService)

  // REST controllers
  ..bind(HelloRest)
  ..bind(UserRest)
  ..bind(ProveedorRest)
  ..bind(User_Product_Register_Rest)
  ..bind(UserVentasRest)
  ..bind(User_Administrator_Rest)
]);
