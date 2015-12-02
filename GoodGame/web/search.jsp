<%-- 
    Document   : search
    Created on : Dec 1, 2015, 3:31:29 PM
    Author     : hen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="gg.Party"%>
<%@page import="gg.VideoGame"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jspf" %>
        <%

            ArrayList<Party> parties = new ArrayList<Party>();

            Party eaGames = new Party("EA");
            eaGames.addClaim("Battlefield 3");
            Party bethesda = new Party("Bethesda");
            bethesda.addClaim("Skyrim");
            bethesda.addClaim("Fallout 4");
            Party lucasArts = new Party("LucasArts");
            lucasArts.addClaim("Dark Forces");
            lucasArts.addClaim("Jedi Outcast");

            parties.add(eaGames);
            parties.add(bethesda);
            parties.add(lucasArts);

            ArrayList<VideoGame> games = new ArrayList<VideoGame>();

            VideoGame fallout4 = new VideoGame("Fallout 4", "Bethesda");
            VideoGame skyrim = new VideoGame("Skyrim", "Bethesda");
            VideoGame battlefield3 = new VideoGame("Battlefield 3", "EA");
            VideoGame darkforces = new VideoGame("Dark Forces", "LucasArts");
            VideoGame outcast = new VideoGame("Jedi Outcast", "LucasArts");

            games.add(darkforces);
            games.add(outcast);
            games.add(fallout4);
            games.add(battlefield3);
            games.add(skyrim);

		System.out.println("Verifying integrity of publisher claims...");
		
		for (int i = 0; i < games.size(); i++){
			String title = games.get(i).name;
			String party = games.get(i).publishingParty;
			
			System.out.println(title + ", " + party);
			
			for (int k = 0; k < parties.size(); k++){
				if (parties.get(k).name.equalsIgnoreCase(party)){
					boolean isValid = parties.get(k).checkClaim(title);
					System.out.println(isValid + "\n" + "----");
				}
			}
		}
		
        %>
    </head>
    <body>
        <div class="container">
            <br />
            <h1>GoodGame.store</h1>
            <h2>Search Results</h2>
            <%
                String searchInput = request.getParameter("searchInput");
            
		//display only LucasArts games
		System.out.println("Show only LucasArts games");
                for (VideoGame game : games) {
                    if (game.publishingParty.toLowerCase().contains(searchInput)
                            || game.name.toLowerCase().contains(searchInput)
                    ) {
                        %>
                                <p>hey <%= game.name %></p>
                        <% 
                    }
                }
            %>
        </div>
    </body>
</html>
