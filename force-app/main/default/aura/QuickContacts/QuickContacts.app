<aura:application >
    <link href ='/resource/Bootstrap/' rel='stylesheet'/>
	<div class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="conatainer">
          <div class ="navbar-header">
              <a href="#" class="navbar-brand">
                  Lightning Contacts 
              </a>
            </div>        
        </div>
    
    </div>
    <div class="container">
          <div class="navbar-header">
            <a href="#" class="navbar-brand">Fetch All Contact</a>
        
        </div>
      
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
            
                <c:SearchBar/>
                <c:ContactList/>
                <div class="col-sm-8">
                 <c:ContactDetails/>
                </div>
            
            </div>
        
        </div>
    
    </div>
</aura:application>