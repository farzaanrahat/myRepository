import com.prowidesoftware.swift.model.SwiftBlock4;
import com.prowidesoftware.swift.model.mt.mt5xx.MT535;

public class SampleParser {

	public static void main(String[] args) {
		MT535 mt = MT535.parse("{1:F01ZZZZZZZZZZZG0387240778}{2:O5350029060914XXXXXXXXXXXX03549878070609140029N}{4:\n" +

				":16R:GENL\n" + ":28E:00005/MORE\n" + ":20C::SEME//ICF2750999999005\n" + ":23G:NEWM\n"
				+ ":98A::STAT//20060913\n" + ":22F::SFRE//DAIL\n" + ":22F::CODE//COMP\n" + ":22F::STTY//CUST\n"
				+ ":22F::STBA//TRAD\n" + ":97A::SAFE//F275\n" + ":17B::ACTI//Y\n" + ":17B::AUDT//N\n"
				+ ":17B::CONS//N\n" + ":16S:GENL\n" +

				":16R:SUBSAFE\n" +

				":16R:FIN\n" + ":35B:/US/31392EXH8\n" + "FEDERAL FOOO MTG ASSN\n" +

				":16R:FIA\n" + ":92A::CUFC//0,14528727\n" + ":16S:FIA\n" + ":93B::AGGR//FAMT/35732656,\n"
				+ ":93B::AVAI//FAMT/35732656,\n" +

				":16R:SUBBAL\n" + ":93B::AGGR//FAMT/1234,5\n" + ":93B::AVAI//FAMT/2345,6\n"
				+ ":93B::AVAI//AMOR/3456,7\n" + ":94F::SAFE//NCSD/FRNYUS33\n" + ":16S:SUBBAL\n" + ":16S:FIN\n" +

				":16S:SUBSAFE\n" +

				"-}{5:{MAC:E19445CF}{CHK:D625798DFC51}}");
		
		
		SwiftBlock4 b4 = mt.getSwiftMessage().getBlock4();
		
		System.out.println("block 4 >>>>  "+b4);
		
		System.out.println(b4.getTagByName("16R"));
		
	}

}
