using { com.sap.cap.car.odata2.ODataCarsSchema as db } from '../db/data-model';

service CarService {
    entity Cars   as projection on db.Car;
    entity Manufacturers as projection on db.Manufacturer;
}