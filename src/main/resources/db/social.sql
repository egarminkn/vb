DROP INDEX IF EXISTS UserConnectionRank;
DROP TABLE IF EXISTS UserConnection;

DROP INDEX IF EXISTS UserProfilePK;
DROP TABLE IF EXISTS UserProfile;

DROP INDEX IF EXISTS DataPK;
DROP TABLE IF EXISTS Data;

CREATE TABLE UserConnection (
  userId         VARCHAR(255)  NOT NULL,
  providerId     VARCHAR(255)  NOT NULL,
  providerUserId VARCHAR(255),
  rank           INT           NOT NULL,
  displayName    VARCHAR(255),
  profileUrl     VARCHAR(512),
  imageUrl       VARCHAR(512),
  accessToken    VARCHAR(1024) NOT NULL,
  secret         VARCHAR(255),
  refreshToken   VARCHAR(255),
  expireTime     BIGINT,
  PRIMARY KEY (userId, providerId, providerUserId)
);
CREATE UNIQUE INDEX UserConnectionRank ON UserConnection (userId, providerId, rank);

CREATE TABLE UserProfile (
  userId    VARCHAR(255) NOT NULL,
  email     VARCHAR(255),
  firstName VARCHAR(255),
  lastName  VARCHAR(255),
  name      VARCHAR(255),
  username  VARCHAR(255),
  PRIMARY KEY (userId)
);
CREATE UNIQUE INDEX UserProfilePK ON UserProfile (userId);

CREATE TABLE Data (
  userId VARCHAR(255) NOT NULL,
  data   VARCHAR(1024),
  PRIMARY KEY (userId)
);
CREATE UNIQUE INDEX DataPK ON Data (userId);
