public class leadingCompetitorClass {
    
    public static void beforeInsertAndUpdateMethod(List<Opportunity> triggernew){
        
        for(Opportunity opp : triggernew){
            
            List<Decimal> competitorPrices = new List<Decimal>();
            competitorPrices.add(opp.Competitor_price_1__c);
            competitorPrices.add(opp.Competitor_price_2__c);
            competitorPrices.add(opp.Competitor_price_3__c);
            
            List<String> competitor = new List<String>();
            competitor.add(opp.Competitor_1__c);
            competitor.add(opp.Competitor_2__c);
            competitor.add(opp.Competitor_3__c);
            
            Decimal highestPrice;
            Integer highestPricePosition;
            for(Integer i=0;i<competitorPrices.size();i++){
                Decimal currentPrice = competitorPrices.get(i);
                if(highestPrice == null || currentPrice>highestPrice){
                    highestPrice = currentPrice;
                    highestPricePosition = i;
                    //System.debug( highestPricePosition);
                    //System.debug(highestPrice);
                }
                
            }
            //System.debug( highestPricePosition);
            //System.debug( competitor.get(highestPricePosition));
           opp.Leading_Competitor__c  = competitor.get(highestPricePosition); 
            //System.debug( opp.Leading_Competitor__c);
           
        }
        
    }

}