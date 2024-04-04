package Java;

public class Utils {

    public static double calcCompInt(double princ, double interest, int years, int compoundingperiod){
        return Math.round(princ * Math.pow(1+ (interest/compoundingperiod), (compoundingperiod* years)));
    }
}
